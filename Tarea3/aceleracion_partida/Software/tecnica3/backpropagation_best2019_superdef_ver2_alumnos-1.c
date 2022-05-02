
//#include <iostream.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include "system.h"
#include "altera_avalon_performance_counter.h"
//#define DER_TANGENTE_TOP_INST(A) __builtin_custom_fnf(ALT_CI_DER_TANGENTE_H2_TOP_0_1_N,(A))
//#define TANGENTE_TOP_INST(A) __builtin_custom_fnf(ALT_CI_TANGENTE_H2_TOP_0_1_N,(A))
#define TANH_INSTRUCT(n,A) __builtin_custom_fnf(ALT_CI_TANH_INSTRUCT_0_N+(n&ALT_CI_TANH_INSTRUCT_0_N_MASK),(A))
//// Data dependent settings ////
#define numInputs  2
#define numOutputs 1
#define numPatterns  4


//// User defineable settings ////
#define numHidden1 50
#define numHidden2 20
const int numEpochs = 200;
const float LR_IH1 = 0.1;
const float LR_H2O = 0.1;
const float LR_H1H2 =0.1;

//aceleradores
  //sin acelaradores  comentar las tres t�cnicas y los dos aceleradores
//#define TECNICA1  //aceleracion con la FPU
//#define TECNICA2  //aceleracion con el periferico
//#define TECNICA3  //aceleracion con la nueva instruccion
//#define TECNICA4 //aceleracion con periferico con DMAs
//#define TECNICA5 //aceleracion con tecnica de ping pong buffer
//#define ACELERACION1  //ACELERACION DE OBTENER UNA APROXIMACION DE LA TANGENTE HIPERB�LICA sea periferico o instruccion
//#define ACELERACION2  //ACELERACION DE OBTENER UNA APROXIMACION DE LA DERIVADA DE LA TANH sea periferico o instruccion




//// functions ////
void initWeights();
void initData();
void calcNet();
void WeightChangesH2O();
void WeightChangesIH1();
void WeightChangesH1H2();
void WeightUpdateH2O();
void WeightUpdateIH1();
void WeightUpdateH1H2();
void calcOverallError();
void displayResults();
void pingpong(int patron);
float getRand();
void print_array(float data[], int n);



//// variables ////
int patNum = 0;
float errThisPat = 0.0;
float delta_o=0.0;
float delta_h1[numHidden1];
float delta_h2[numHidden2];
float RMSerror = 0.0;

// the data
float trainInputs[numPatterns][numInputs+1] ;
float trainOutput[numPatterns];

// the outputs of the hidden neurons of hidden layer 1
float hiddenVal1[numHidden1];
float der_hiddenVal1[numHidden1] ;
float ponderacion1 [numHidden1] ;

// the outputs of the hidden neurons of hidden layer 2
float hiddenVal2[numHidden2] ;
float der_hiddenVal2[numHidden2] ;
float ponderacion2 [numHidden2] ;

//the outputs of the outputs neurons
float outPred  ;
float der_outPred ;
float ponderacion3 ;

// the weights
float weightsIH1[numInputs+1][numHidden1];
float weightsH1H2[numHidden1+1][numHidden2];
float weightsH2O[numHidden2+1];
float weightsH1H2_old[numHidden1+1][numHidden2];
float weightsH2O_old[numHidden2+1];




//==============================================================
//************** function definitions **************************
//==============================================================
/*Inline function copies the definition of the function whenever its called
 * instead of reserving a chunk of memory for separate instructions
 * erasing call linking.
 */

void print_array(float data[], int n)
{
    int i;

    printf("[");
    for (i = 0; i < n; i++)
    {

        printf("%f",data[i]);
        if (i != n-1)
        {
            printf(",");
        }
    }
    printf("]\n");
}

//***********************************
// calculates the network output
void calcNet(void)
{
    //calculate the outputs of the hidden neurons of hidden layer 1
    //the hidden neurons are tanh
    int i = 0;
    int j =0;


    for(i = 0;i<numHidden1;i++)
    {

      ponderacion1[i] =  weightsIH1[numInputs][i];

        for(j = 0;j<numInputs;j++)
        {

       ponderacion1[i] = ponderacion1[i] + (trainInputs[patNum][j] * weightsIH1[j][i]);

        }

			hiddenVal1[i] = TANH_INSTRUCT( 0, ponderacion1[i]); //tanh with n=0

    }


    for(i = 0;i<numHidden2;i++)
    {

      ponderacion2[i] =  weightsH1H2[numHidden1][i];

        for(j = 0;j<numHidden1;j++)
        {

        ponderacion2[i] =ponderacion2[i]+  (hiddenVal1[j] * weightsH1H2[j][i]);

        }


			hiddenVal2[i] = TANH_INSTRUCT( 0, ponderacion2[i]); //tanh with n=0


    }
   //calculate the output of the network
   //the output neuron is linear

   ponderacion3 =  weightsH2O[numHidden2];


   for(i = 0;i<numHidden2;i++)
   {

    ponderacion3= ponderacion3 + hiddenVal2[i] * weightsH2O[i];

   }


        outPred  = TANH_INSTRUCT( 0,ponderacion3); //tanh with n=0

    //calculate the error
    errThisPat = trainOutput[patNum]-outPred;

}


//************************************
//adjust the weights hidden-output
void WeightChangesH2O(void)
{


		delta_o = (TANH_INSTRUCT (1, ponderacion3))* errThisPat;


 }

//************************************
//update the weights hidden-output
void WeightUpdatesH2O(void)
{
    int k=0;
   for(k = 0;k<numHidden2+1;k++)
   {
    float weightChange =delta_o * LR_H2O * hiddenVal2[k];

    weightsH2O_old[k] = weightsH2O[k] ;
    weightsH2O[k] = weightsH2O[k] + weightChange;

   }

 }

//************************************
// adjust the weights hidden1-hidden2
void WeightChangesH1H2(void)
{

  int i=0; 
  for(i = 0;i<numHidden2;i++)
  {

		delta_h2[i] = (TANH_INSTRUCT (1, ponderacion2[i]))* delta_o* weightsH2O_old[i];



  }

}

//************************************
// update the weights hidden1-hidden2
void WeightUpdatesH1H2(void)
{

  int i=0;
  for(i = 0;i<numHidden2;i++)
  {
   int k=0;
   for( k = 0;k<numHidden1+1;k++)
   {
    float weightChange = delta_h2[i] * LR_H1H2 * hiddenVal1[k];

   weightsH1H2_old[k][i] = weightsH1H2[k][i];
   weightsH1H2[k][i] = weightsH1H2[k][i] + weightChange;

   }
  }

}
//************************************
// adjust the weights input-hidden1
void WeightChangesIH1(void)
{

  int i=0; 
  for(i = 0;i<numHidden1;i++)
  {

    int j=0;
    float sum_delta=0.0;
    for ( j = 0;j<numHidden2;j++)
    {

        sum_delta= sum_delta+ delta_h2[j]*weightsH1H2_old[i][j];

    }

		delta_h1[i]= (TANH_INSTRUCT( 1, ponderacion1[i]))* sum_delta;

  }

}

//************************************
// update the weights input-hidden1
void WeightUpdatesIH1(void)
{

  int i=0;
  for(i = 0;i<numHidden1;i++)
  {
    int k=0;
	for( k = 0;k<numInputs+1;k++)
	{
    float weightChange = delta_h1[i] * LR_IH1 * trainInputs[patNum][k];

     weightsIH1[k][i] = weightsIH1[k][i] + weightChange;

   }
  }

}

//************************************
// generates a random number
float getRand(void)
{
 return ((float)rand())/(float)RAND_MAX;
}



//************************************
// set weights to random numbers 
void initWeights(void)
{
 int j=0;
 int i=0;
 int k=0;

 for( j = 0;j<numHidden2+1;j++)
 {
    weightsH2O[j] = (getRand() - 0.5)/2;
 }
 for( k = 0;k<numHidden2;k++)
   {
    for( i = 0;i<numHidden1+1;i++)
    {
     weightsH1H2[i][k] = (getRand() - 0.5)/2;
     //printf("Weight = %f\n", weightsH1H2[i][k]);
    }
   }
 for( k = 0;k<numHidden1;k++)
   {
    for( i = 0;i<numInputs+1;i++)
    {
     weightsIH1[i][k] = (getRand() - 0.5)/2;
     //printf("Weight = %f\n", weightsIH1[i][k]);
    }
   }
}


//************************************
// read in the data
void initData(void)
{
    printf("initialising data\n");

    // the data here is the XOR data
    // it has been rescaled to the range
    // [-1][1]
    // an extra input valued 1 is also added
    // to act as the bias
    // the output must lie in the range -1 to 1

    trainInputs[0][0]  = 0.95;
    trainInputs[0][1]  = -0.95;
    trainInputs[0][2]  = 1;    //bias
    trainOutput[0] = 0.95;

    trainInputs[1][0]  = -0.95;
    trainInputs[1][1]  = 0.95;   
    trainInputs[1][2]  = 1;       //bias
    trainOutput[1] = 0.95;

    trainInputs[2][0]  = 0.95;
    trainInputs[2][1]  = 0.95;
   trainInputs[2][2]  = 1;        //bias
    trainOutput[2] = -0.95;
    
    trainInputs[3][0]  = -0.95;
    trainInputs[3][1]  = -0.95;
    trainInputs[3][2]  = 1;     //bias
    trainOutput[3] = -0.95;
hiddenVal1[numHidden1]=1;//bias capa oculta1
hiddenVal2[numHidden2]=1;//bias capa oculta2
}


//************************************
// display results
void displayResults(void)
{
 int i=0;
 for( i = 0;i<numPatterns;i++)
 {
  patNum = i;
  calcNet();
  printf("pat = %d actual = %f neural model = %f\n",patNum+1,trainOutput[patNum],outPred);
 }
}


//************************************
// calculate the overall error
void calcOverallError(void)
{
     int i=0;
     RMSerror = 0.0;
     for(i = 0;i<numPatterns;i++)
        {
         patNum = i;
         calcNet();
         RMSerror = RMSerror + (errThisPat * errThisPat);
        }
     RMSerror = RMSerror/numPatterns;
     RMSerror = sqrt(RMSerror);
}



//==============================================================
//********** THIS IS THE MAIN PROGRAM **************************
//==============================================================


int main(void)
{
 // seed random number function
 srand ( time(NULL) );
  PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
  PERF_START_MEASURING(PERFORMANCE_COUNTER_0_BASE);
 // initiate the weights
  PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 1);
 initWeights();
 // load in the data
 initData();
   PERF_END (PERFORMANCE_COUNTER_0_BASE, 1);
 
 int j;
 int i;


 // train the network
    for(j = 0;j <= numEpochs;j++)
    {
        for(i = 0;i<numPatterns;i++)
        {
          //select a pattern at random
          patNum = rand()%numPatterns;

          //calculate the current network output
          //and error for this pattern
          //phase forward

          PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 2);
          calcNet();
          PERF_END (PERFORMANCE_COUNTER_0_BASE, 2);
          //change network weights
          //phase backward and update weights
          PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 3);
          WeightChangesH2O();
          WeightChangesH1H2();         
          WeightChangesIH1();
          PERF_END (PERFORMANCE_COUNTER_0_BASE, 3);
          PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 4);
          WeightUpdatesH2O();
          WeightUpdatesH1H2();
          WeightUpdatesIH1();
          PERF_END (PERFORMANCE_COUNTER_0_BASE, 4);
        }

        //display the overall network error
        //after each epoch
        PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 5);
        calcOverallError();
        printf("epoch = %d RMS Error = %f\n",j,RMSerror);
        PERF_END (PERFORMANCE_COUNTER_0_BASE, 5);
    }

 //training has finished
 //display the results
 PERF_BEGIN (PERFORMANCE_COUNTER_0_BASE, 6);
 displayResults();
 PERF_END (PERFORMANCE_COUNTER_0_BASE, 6);
 
 PERF_STOP_MEASURING(PERFORMANCE_COUNTER_0_BASE);

  perf_print_formatted_report((void *)PERFORMANCE_COUNTER_0_BASE,
                              ALT_CPU_FREQ,
                              6,
                              "INICIAR",
                              "FASE FORWARD",
                              "FASE BACKWARD",
							  "FASE UPDATE",
                              "CALCULO ERROR",
                              "TEST FINAL"
                              );

 system("PAUSE");
 return 0;
}
