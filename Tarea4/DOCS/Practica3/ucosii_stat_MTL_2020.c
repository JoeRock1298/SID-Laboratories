/* CHS EJERCICIO ESTADISTICAS RTOS INICIAL PARA DESARROLLO*/


#include <stdio.h>
#include <string.h>
#include "includes.h"
#include "stats.h"
#include "alt_ucosii_simple_error_check.h"


//Declaracion de funciones para mostrar en la Pantalla//
void MTL_box (int, int, int, int, short);
void MTL_text (int, int, char *);
void borra_lineas_pantalla(int lineas);


//TEXTO MARGENES PANTALLA
char texto_up[100] = 	"ESTADISTICAS de RTOS sobre MTL - CHS 2021/22   ";
char texto_down[100] =	" uCOS-II sobre NIOS-II, Cyclone IV, CHS 2021/22 ";
char blank[100]=		"                                                         ";
char int_text [22]= 	"Interrupcion Activada";
char vector[4];
char visualiza_blanco[40] = "                ";

// INTERRUPCIONES
void pushbutton_isr();

/* DECLARACION DE FUNCIONES RELACIONADAS CON ESTADISTICAS */
void TaskStart(void* pdata);
void TaskStartCreateTasks();
void OSTaskStatHook (void);

// Constantes globales
int columna=2;
int linea=3;



//static int KEY_value, SW_value;

 // HARDWARE
 volatile int * KEY_ptr = (int *) PUSHBUTTONS_BASE;
 volatile int * SW_switch_ptr = (int *) SWITCHES_BASE;





// Subrutina de manejo de interrupcion por pulsador
void pushbutton_isr() {
OSIntEnter();
	static int num_int=1; /* aseguro que solo esta funcion modifica esta variable */
	int KEY_value, SW_value;
	KEY_value = *(KEY_ptr + 3);		// Leemos registro de pulsadores
	SW_value = *(SW_switch_ptr);	// Leemos registro de Switches
	SW_value = SW_value & 1;

	*(KEY_ptr + 3) = 0;				// Borrar la interrupcion

	if (KEY_value == 0x2) {			// Texto de Atencion Interrupcion y contador de veces
		linea=2;columna=2;
		borra_lineas_pantalla(30);
		MTL_text (22, linea, int_text);
		sprintf(vector," %02d",num_int++);
		MTL_text (22+22,linea, vector);
	}
OSIntExit();
}

/* _____________PROGRAMA DE PRACTICAS DE RTOS DE LA ASIGNATURA CHS. MASTER MUIT._____________ */

/* Definition of Task Stacks */
#define   TASK_STACKSIZE  2048
#define	  TASK2_STACKSIZE 1400
OS_STK    task1_stk[TASK_STACKSIZE];
OS_STK    task2_stk[TASK2_STACKSIZE];
OS_STK    task3_stk[TASK_STACKSIZE];
OS_STK    task4_stk[TASK_STACKSIZE];
OS_STK	  taskstart_stk[TASK_STACKSIZE];
OS_STK	  showstat_stk[TASK_STACKSIZE];


/* Definition of Struct for Stats*/
OS_STK_DATA	data;
TASK_USER_DATA  TaskUserData[10];

/* Definition of Task Priorities */
#define TASKSTART_PRIORITY 	0
#define TASK1_PRIORITY      1
#define TASK2_PRIORITY      2
#define TASK3_PRIORITY      3
#define TASK4_PRIORITY      4
#define TASK_SHOWSTATS_PRIO 5

/* Definition of Task ID, realmente no valen para nada, esperemos que tengan sentido en uCOSIII */
#define TASKSTART_ID  2
#define TASK1_ID      3
#define TASK2_ID      4
#define TASK3_ID      5
#define TASK4_ID      6
#define TASK_SHOWSTATS_ID 10



/* Prints "Hello World" and sleeps a while */
void task1(void* pdata)
{
	INT32U reservado=128;
	INT32U time1,time2;
	INT32U i;
	char visualiza_string[40] = "Hello from task1";
	char* dummy[reservado];

  while (1)
  { 
		time1=OSTimeGet();

		for (i=0; i<reservado-1; i++){
			dummy[i]="Hola Don Pepito";
		}
		for(i = 0; i<reservado-1; i++)
		        printf("\nEl mensaje es: %s", dummy[i]);
		time2=OSTimeGet();
    printf("%s\n",visualiza_string);
    printf("\nHello from task1, I need %ld - %ld = %ld ticks from RTOS\n",time2,time1, time2-time1);
    MTL_text (columna, linea++, visualiza_string);
    MTL_text (columna, linea++, visualiza_blanco);
    if (linea>=29){ linea=2;}
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}
/* Prints "Hello World" and sleeps a while */
void task2(void* pdata)
{
	INT32U reservado=500;
	INT32U time1,time2;
	char* dummy[reservado];
	INT32U i;
	char visualiza_string[40] = "Hello from task2";
  while (1)
  {
	//ejercicio 2
	time1=OSTimeGet();
	for (i=0; i<reservado-1; i++){
			dummy[i]="Hola Don Jos�";
		}
		for(i = 0; i<reservado-1; i++)
		        printf("\nEl mensaje desde task2 es: %s", dummy[i]);

	time2=OSTimeGet();
    printf("\nHello from task2, I need %ld - %ld = %ld ticks from RTOS\n",time2,time1, time2-time1);
 // fin ejercicio 2
    MTL_text (columna, linea++, visualiza_string);
    MTL_text (columna, linea++, visualiza_blanco);
    if (linea>=29){ linea=2;}
    OSTimeDlyHMSM(0, 0, 1, 300);
  }
}

/* Prints "Hello World" and sleeps a while */
void task3(void* pdata)
{
	char visualiza_string[40] = "Hello from task3";
  while (1)
  {
    MTL_text (columna, linea++, visualiza_string);
    MTL_text (columna, linea++, visualiza_blanco);
    if (linea>=29){ linea=2;}
    OSTimeDlyHMSM(0, 0, 2, 500);
  }
}

/* Prints "Hello World" and sleeps a while */
void task4(void* pdata)
{
	char visualiza_string[40] = "Hello from task4";
  while (1)
  {
    MTL_text (columna, linea++, visualiza_string);
    MTL_text (columna, linea++, visualiza_blanco);
    if (linea>=29){ linea=2;}
    OSTimeDlyHMSM(0, 0, 2, 0);
  }
}

/* The main function creates two task and starts multi-tasking */
int main(void)
{



	borra_lineas_pantalla(32);

//Crea el texto en la pantalla
	MTL_text (2, 0, texto_up);		// primera linea
	MTL_text (2, 0, blank);			// segunda linea
//Pintar en la pantalla cuadros
	MTL_box (0, 0, 400, 240, 0x1111);	 	//Pinta de azul toda la pantalla
	MTL_box (0, 0, 400, 8, 0x01100);  		//Franja superior
	MTL_box (155, 30, 395, 235, 0x0100);	//cuadro para mensajes


// Interrupcion pulsador para los pulsadores
	*(KEY_ptr + 2) = 0xE;
	*(KEY_ptr + 3) = 0;
	alt_irq_register(PUSHBUTTONS_IRQ, NULL, pushbutton_isr);

	printf("Hola soy MAIN\n");

	OSTaskCreateExt(TaskStart,
		                  NULL,
		                  (void *)&taskstart_stk[TASK_STACKSIZE-1],
		                  TASKSTART_PRIORITY,
		                  TASKSTART_ID,
		                  &taskstart_stk[0],
		                  TASK_STACKSIZE,
		                  &TaskUserData[TASKSTART_PRIORITY], // guarda datos de la tarea
		                  OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR); // opciones de chequeo de tareas
						// TASK opt stack check/ task opt stack clear

  OSStart();

  return 0;

}


		/* Initialize Task Statistics and starts only one task that creates the others tasks */
		void TaskStart(void* pdata)
		{
		// nombramos tareas
		printf("Estamos en TaskStart\n");
		strcpy (TaskUserData[TASK1_PRIORITY].TaskName,"Task 1");
		strcpy (TaskUserData[TASK2_PRIORITY].TaskName,"Task 2");
		strcpy (TaskUserData[TASK3_PRIORITY].TaskName,"Task 3");
		strcpy (TaskUserData[TASK4_PRIORITY].TaskName,"Task 4");

		// Muy importante la llamada a OSStatInit ANTES de la creacion de las tareas con OSTaskCreateExt()
		OSStatInit();

		TaskStartCreateTasks();
		printf ("Creamos tareas con estadisticas habilitadas y nos suicidamos desde TaskStart\n");
		OSTaskDel(OS_PRIO_SELF);
		}

		void showstats (void* pdata)
		{
			INT8U 	error;
			INT32U	time_tsk;
			INT8U	i;
			 char running[40] = "Running time...";
			 char cpu_usage[40]="% CPU Used...";
			 char time_c[4];
			 char taskname_c[25];

		  while (1)
		  {
			  OSSchedLock();
			  for (i=TASK1_PRIORITY; i< TASK4_PRIORITY+1; i++){
				 	error= OSTaskStkChk(i, &data);
				 	alt_ucosii_check_return_code(error);
				/*Estos valores se obtienen de la funcion de os_cpu_c.c : OSTaskSwHook cuando se programa */
					  printf("\nTaskExecTime      %-8s is %3d",TaskUserData[i].TaskName,TaskUserData[i].TaskExecTime );
					  printf("\nTaskTotalExecTime %-8s is %3ld",TaskUserData[i].TaskName,TaskUserData[i].TaskTotExecTime );
					  printf("\nTaskCtr   of      %-8s is %3d\n",TaskUserData[i].TaskName,TaskUserData[i].TaskCtr );

					  time_tsk=OSTimeGet();



					 /*MTL ESTADISTICAS */

					 /* Running Time y CPU Used*/
					 MTL_text (22,4,running);
					 sprintf(time_c," %04ld",time_tsk);
					 MTL_text (22+18, 4, time_c);
					 MTL_text (22,5,cpu_usage);
					 sprintf(time_c," %04d",OSCPUUsage);
					 MTL_text (22+18, 5, time_c);

					 /*Stack Used & Free for each Task*/
					 sprintf(taskname_c,"%s Stack Used  %04ld",TaskUserData[i].TaskName, data.OSUsed);
					 MTL_text (22, 5+3*i, taskname_c);
					 sprintf(taskname_c,"%s Stack Free  %04ld",TaskUserData[i].TaskName, data.OSFree);
					 MTL_text (22, 6+3*i, taskname_c);
					 sprintf(taskname_c,"%s Total Stack %04ld",TaskUserData[i].TaskName, data.OSFree+data.OSUsed);
					 MTL_text (22, 7+3*i, taskname_c);

				  }
			  //	OSTaskStatHook(); /*�es necesario llamarla aqu�? -> No es necesar�o pero conveniente*/
			  OSSchedUnlock();
			  OSTimeDlyHMSM(0, 0, 1, 0); /* se llaman las estad�sticas cada  1 segundos*/


		  	  }

		}

		/*
		*********************************************************************************************************
		*                   		 STATISTIC TASK HOOK - HERE LIKE A FUNCTION HOOK
		*
		* Description: This function is called every second by uC/OS-II's statistics task.  This allows your
		*              application to add functionality to the statistics task.
		*
		* Arguments  : none
		*********************************************************************************************************
		*/
		void OSTaskStatHook (void)
		{

			 	 char taskname_c[25];
			 	    INT8U   i;
			 	    INT32U  total;
			 	    INT8U   pct;
			 	    total = 0L;                                          // Totalize TOT. EXEC. TIME for each task
			 	    for (i = TASK1_PRIORITY; i < TASK4_PRIORITY+1; i++) {
			 	        total += TaskUserData[i].TaskTotExecTime;

			 	    }
			 	    if (total > 0) {
			 	        for (i = TASK1_PRIORITY; i < TASK4_PRIORITY+1; i++) {        // Derive percentage of each task
			 	            pct = 100 * TaskUserData[i].TaskTotExecTime / total;
							 sprintf(taskname_c,"%s uses %04d of NIOSII",TaskUserData[i].TaskName, pct);
							 MTL_text (22, 20+i, taskname_c);
			 	        }
			 	    }

			 	    if (total > 1000000000L) {                           // Reset total time counters at 1 billion
			 	        for (i = TASK1_PRIORITY; i < TASK4_PRIORITY+1; i++) {
			 	        	TaskUserData[i].TaskTotExecTime = 0L;
			 	        }
			 	    }

		}



		/* Function that creates all other tasks */
		void TaskStartCreateTasks()
		{

			OSTaskCreateExt(task1,
			                  NULL,
			                  (void *)&task1_stk[TASK_STACKSIZE-1],
			                  TASK1_PRIORITY,
			                  TASK1_ID,
			                  &task1_stk[0],
			                  TASK_STACKSIZE,
			                  &TaskUserData[TASK1_PRIORITY],
			                  OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
			OSTaskCreateExt(task2,
			                  NULL,
			                  (void *)&task2_stk[TASK2_STACKSIZE-1],
			                  TASK2_PRIORITY,
			                  TASK2_ID,
			                  &task2_stk[0],
			                  TASK2_STACKSIZE,
			                  &TaskUserData[TASK2_PRIORITY],
			                  OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
			OSTaskCreateExt(task3,
						      NULL,
						      (void *)&task3_stk[TASK_STACKSIZE-1],
						      TASK3_PRIORITY,
						      TASK3_ID,
						      &task3_stk[0],
						      TASK_STACKSIZE,
						      &TaskUserData[TASK3_PRIORITY],
						      OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
			OSTaskCreateExt(task4,
						      NULL,
						      (void *)&task4_stk[TASK_STACKSIZE-1],
						      TASK4_PRIORITY,
						      TASK4_ID,
						      &task4_stk[0],
						      TASK_STACKSIZE,
						      &TaskUserData[TASK4_PRIORITY],
						      OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
			OSTaskCreateExt(showstats,
						      NULL,
						      (void *)&showstat_stk[TASK_STACKSIZE-1],
						      TASK_SHOWSTATS_PRIO,
						      TASK_SHOWSTATS_ID,
						      &showstat_stk[0],
						      TASK_STACKSIZE,
						      &TaskUserData[TASK_SHOWSTATS_PRIO],
						      OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
		}


		/*
		*********************************************************************************************************
		*                                           TASK SWITCH HOOK
		*
		* Description: This function is called when a task switch is performed.  This allows you to perform other
		*              operations during a context switch. MUST BE CREATED IN THE OC_CPU_C.C UCOSII FILE.
		*
		* Arguments  : none
		*
		* Note(s)    : 1) Interrupts are disabled during this call.
		*              2) It is assumed that the global pointer 'OSTCBHighRdy' points to the TCB of the task that
		*                 will be 'switched in' (i.e. the highest priority task) and, 'OSTCBCur' points to the
		*                 task being switched out (i.e. the preempted task).
		*********************************************************************************************************
		*/
/*		void OSTaskSwHook (void)
		{
			  INT16U           time;
			  TASK_USER_DATA  *puser;

			  time  = OSTimeGet();              // This task is done
			  OSTimeSet(0);                     // Start for next task ���ESTO DETERMINA LA PRECISION EN EL CALCULO!!!
			    puser = OSTCBCur->OSTCBExtPtr;               	// Point to used data
			 	    if (puser != (TASK_USER_DATA *)0) {
			 	        puser->TaskCtr++;                        // Increment task counter
			 	        puser->TaskExecTime     = time;          // Update the task's execution time
			 	        puser->TaskTotExecTime += time; }        // Update the task's total execution time

		}*/

