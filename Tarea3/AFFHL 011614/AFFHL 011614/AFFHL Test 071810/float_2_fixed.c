#include <stdio.h>
#include <math.h>

#define MANTISSA_BITS 23
#define EXPONENT_BITS 8
#define RADIX_POINT 8
#define FALSE 0
#define TRUE 1

#define NUM_SAMPLES 1000

/* Globals */
float u[97],c,cd,cm;
int i97,j97;
int test = FALSE;


void RandomInitialise(int ij,int kl)
{
   float s,t;
   int ii,i,j,k,l,jj,m;

   /*
      Handle the seed range errors
         First random number seed must be between 0 and 31328
         Second seed must have a value between 0 and 30081
   */
   if (ij < 0 || ij > 31328 || kl < 0 || kl > 30081) {
		ij = 1802;
		kl = 9373;
   }

   i = (ij / 177) % 177 + 2;
   j = (ij % 177)       + 2;
   k = (kl / 169) % 178 + 1;
   l = (kl % 169);

   for (ii=0; ii<97; ii++) {
      s = 0.0;
      t = 0.5;
      for (jj=0; jj<24; jj++) {
         m = (((i * j) % 179) * k) % 179;
         i = j;
         j = k;
         k = m;
         l = (53 * l + 1) % 169;
         if (((l * m % 64)) >= 32)
            s += t;
         t *= 0.5;
      }
      u[ii] = s;
   }

   c    = 362436.0 / 16777216.0;
   cd   = 7654321.0 / 16777216.0;
   cm   = 16777213.0 / 16777216.0;
   i97  = 97;
   j97  = 33;
   test = TRUE;
}



float RandomUniform(void)
{
   float uni;

   /* Make sure the initialisation routine has been called */
   if (!test)
   	RandomInitialise(1802,9373);

   uni = u[i97-1] - u[j97-1];
   if (uni <= 0.0)
      uni++;
   u[i97-1] = uni;
   i97--;
   if (i97 == 0)
      i97 = 97;
   j97--;
   if (j97 == 0)
      j97 = 97;
   c -= cd;
   if (c < 0.0)
      c += cm;
   uni -= c;
   if (uni < 0.0)
      uni++;

   return(uni);
}


float RandomDouble(float lower,float upper)
{
   return((upper - lower) * RandomUniform() + lower);
}

long int floatrepresent_new(float tmp)
{
    void *tmp_ptr;
    tmp_ptr = &tmp;

    return *((long int *)tmp_ptr);
}

long long int floatrepresent(float tmp)
{
	//float tmp = 0.125;
	float fraction,fraction_tmp;
	long long int fraction_rep,integer,num,mantissa,exponent,float_out;
	int shift=0;
	int sign=0;

	if (tmp <0)
	{
		sign=1;
		tmp=-tmp;
	}
	else
	{
		sign=0;
	}

	integer = (long long int)tmp;
	fraction = tmp - integer;
    fraction_tmp = fraction;

    fraction_rep = (long long int)(fraction*pow((float)2,(float)MANTISSA_BITS));
    num = integer;

	if (integer != 0)
	{
		while(num>1)
		{
			num = num/2;
			shift++;
		}
	}
	else
	{
		while(fraction_tmp<1)
		{
			fraction_tmp = fraction_tmp*2;
			shift--;
		}
	}
	num = integer - (long long int)pow((float)2,(float)shift);

    if (integer != 0)
        mantissa = (long long int) ((float)(num + fraction)*(long int)pow((float)2,(float)(MANTISSA_BITS-shift)));
    else
        mantissa = (long long int) ((float)(fraction_tmp-1)*(long int)pow((float)2,(float)(MANTISSA_BITS)));

	exponent = (1<<(EXPONENT_BITS-1))+ shift - 1;

	float_out = (sign<<(MANTISSA_BITS+EXPONENT_BITS)) + (exponent<<MANTISSA_BITS) + mantissa;

    //printf("Sign = %d\n",sign);
    //printf("Matissa = %lld\n",mantissa);
    //printf("Exponent = %lld\n",exponent);
    //printf("%lld\n",float_out);
    //printf("%016llx\n",float_out);
	//printf("\n%d",sizeof(float_out));

	return float_out;
}

long int denormrepresent_float(float tmp)
{
    //float tmp = 0.125;
    long int denorm_int, exp_and_value, man_and_value, point_five;
    int sign, shift;

    void *tmp_ptr;
    tmp_ptr = &tmp;

    exp_and_value = 0x7f800000; // 0x7f800000 in case of float
    man_and_value = 0x007fffff;
    point_five = ((long int) pow (2.0, (double)(MANTISSA_BITS-1)));
    denorm_int = *((long int *)tmp_ptr);
    sign = (denorm_int & 0x80000000) ? 1 : 0;
    shift = 127 - ((denorm_int & exp_and_value)/((long int) pow (2.0, (double)MANTISSA_BITS)));
    denorm_int = denorm_int & man_and_value;
    denorm_int = denorm_int>>1;
    denorm_int = denorm_int + point_five;
    denorm_int = denorm_int >> (shift-1);

    if (sign == 1)
        denorm_int = denorm_int | 0x80000000;

    //and_value = ((long long int) pow (2.0, (double)(MANTISSA_BITS-1))) - 1;
    //and_value += (long long int) pow (2.0, (double)(MANTISSA_BITS+EXPONENT_BITS));
    return denorm_int;
}

long int fixedrepresent(float tmp)
{
    long int FixedPointValue;
    float fraction,fraction_tmp;
    long int integer,num;
    int shift=0;
    int sign=0;

    if (tmp <0)
    {
        sign = 1;
        tmp  = -tmp;
    }
    else
    {
        sign = 0;
    }

    integer      = (long int)tmp;
    fraction     = tmp - integer;
    fraction_tmp = fraction;
    num          = integer;

    if (integer != 0)
    {
        while(num>1)
        {
            num = num/2;
            shift++;
        }
    }
    else
    {
        while(fraction_tmp<1)
        {
            fraction_tmp = fraction_tmp*2;
            shift--;
        }
    }

    tmp = ((float) floor(tmp * pow(2.0,(float)(MANTISSA_BITS-shift))))/pow(2.0,(float)(MANTISSA_BITS-shift));

    FixedPointValue = floor(tmp*(1<<RADIX_POINT));

    if (sign==1)
        FixedPointValue = -FixedPointValue;
    //printf("\n%x\n",FixedPointValue);
    return FixedPointValue;
}

float fixed_2_float (long int fixed_in)
{
	float float_out;
	float_out = (float)fixed_in/pow(2.0,(float)RADIX_POINT);
	return float_out;
}

int main ()
{
	int i;
    FILE *fp_float, *fp_fixed, *fp_double, *fp_denorm, *fp_fixed_float;
    long int float_in, fixed_out, denorm_in;
	float fixed_2_float_out;
	long int fixed_2_float_rep;

	fp_float = fopen("FloatInputNormal.txt","w");
    //fp_denorm = fopen("DenormInput.txt","w");
	fp_fixed = fopen("FixedOutputNormal.txt","w");
	fp_fixed_float = fopen("FloatOutput.txt","w");
	fp_double = fopen("DoubleOutput.txt","w");

	for(i =0;i<NUM_SAMPLES;i++)
	{
		float tmp = RandomDouble(-32768.099,32768.0099);

		if (i == 492)
			tmp = tmp*1;
		//printf("\n\n\nRandom number for Loop: %d is %lf\n",i,tmp);
                //long long int act_int = floor(tmp*(1<<MANTISSA_BITS));
                //float act_double = (float)(act_int)/(1<<MANTISSA_BITS);
                //printf("%.12lf\t%.12lf\n",tmp,act_double);
		float_in  = floatrepresent_new(tmp);
        //denorm_in = denormrepresent_float(tmp);
		fixed_out = fixedrepresent(tmp);
		fixed_2_float_out = fixed_2_float(fixed_out);
		fixed_2_float_rep = floatrepresent_new(fixed_2_float_out);

		fprintf(fp_float,"%08lx\n",float_in);
        //fprintf(fp_denorm,"%08lx\n",denorm_in);
		fprintf(fp_fixed,"%08lx\n",fixed_out);
		fprintf(fp_fixed_float,"%08lx\n",fixed_2_float_rep);
		fprintf(fp_double,"%lf\n",tmp);
	}

	fclose(fp_float);
    //fclose(fp_denorm);
	fclose(fp_fixed);
	fclose(fp_fixed_float);
	fclose(fp_double);

	return(0);
}
