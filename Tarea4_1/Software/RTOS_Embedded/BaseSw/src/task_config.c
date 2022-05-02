/*
 * task_config.c
 *
 *  Created on: 16 de nov. de 2020
 *      Author: mpeir
 */

#include "..\inc\task_config.h"


void Mensaje_TaskMtl(char visualiza_string[4], int posicion)
	{
#ifdef PRINT
    	printf("%s\n",visualiza_string);
#endif
    posicion=(linea>ultima_linea)?primera_linea:linea++;
    if (linea>ultima_linea){linea=primera_linea;}
    MTL_text (2, posicion, visualiza_string);
    borra_lineas_pantalla(posicion+1,posicion+2);

    }



/* Prints "Hello World" and sleeps for x seconds */
void task1(void* pdata)
{
	char visualiza_string[40] = "Hello from task1";
	int posicion=0;
  while (1)
  {
	blinky_ledg(green_LED_ptr,1);
	Mensaje_TaskMtl(visualiza_string,posicion);

    OSTimeDlyHMSM(0, 0, 0, 100);
  }
}
/* Prints "Hello World" and sleeps for x seconds */
void task2(void* pdata)
{
	char visualiza_string[40] = "Hello from task2";
	int posicion=0;
  while (1)
  {
	blinky_ledg(green_LED_ptr,2);
    Mensaje_TaskMtl(visualiza_string,posicion);
    ledg_OFF(green_LED_ptr,1);

    OSTimeDlyHMSM(0, 0, 0, 200);
  }
}

void task3(void* pdata)
{
	char visualiza_string[40] = "Hello from task3";
	int posicion=0;
  while (1)
  {
	blinky_ledg(green_LED_ptr,3);

	Mensaje_TaskMtl(visualiza_string,posicion);

    OSTimeDlyHMSM(0, 0, 0, 400);

  }
}

void task4(void* pdata)
{
	char visualiza_string[40] = "Hello from Recovery Task";
	int posicion=0;
  while (1)
  {
	blinky_ledg(green_LED_ptr,4);

	Mensaje_TaskMtl(visualiza_string, posicion);

	OSTimeDlyHMSM(0, 0, 0, 600);

  }
}

void TaskInit(void* pdata)
{
	char visualiza_string[40] = "Hello from Task Init";
	int posicion=0;
  while (1)
  {
	ledg_OFF_All();
	blinky_ledg(green_LED_ptr,8);
	Mensaje_TaskMtl(visualiza_string, posicion);
	ListTask();

  // Tras la creacion de las task esta tarea no tiene mas trabajo y se pasa a DORMANT
	OSTaskDel(OS_PRIO_SELF);
  }
}

void CreateTasks (void)
{
	  OSTaskCreateExt(TaskInit,
	                  NULL,
	                  (void *)&taskinit_stk[TASK_STACKSIZE-1],
	                  TASK_INIT_PRIORITY,
	                  TASK_INIT_PRIORITY,
	                  taskinit_stk,
	                  TASK_STACKSIZE,
	                  NULL,
	                  0);
}

// Creacion de Tareas
void ListTask(void)
{
  OSTaskCreateExt(task1,
                  NULL,
                  (void *)&task1_stk[TASK_STACKSIZE-1],
                  TASK1_PRIORITY,
                  TASK1_PRIORITY,
                  task1_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);


  OSTaskCreateExt(task2,
                  NULL,
                  (void *)&task2_stk[TASK_STACKSIZE-1],
                  TASK2_PRIORITY,
                  TASK2_PRIORITY,
                  task2_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);

  OSTaskCreateExt(task3,
                  NULL,
                  (void *)&task3_stk[TASK_STACKSIZE-1],
                  TASK3_PRIORITY,
                  TASK3_PRIORITY,
                  task3_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
  OSTaskCreateExt(task4,
                  NULL,
                  (void *)&task4_stk[TASK_STACKSIZE-1],
                  TASK4_PRIORITY,
                  TASK4_PRIORITY,
                  task4_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);



}

