/*
 * task_config.c
 *
 *  Created on: 16 de nov. de 2020
 *      Author: mpeir
 */

#include "..\inc\task_config.h"

/* variable globales de uso exclusivo en este fichero, por ello no se incluyen en task_config.h */

INT32U number_of_messages_sent = 0;
INT32U number_of_messages_received_task1 = 0;
INT32U number_of_messages_received_task2 = 0;
INT32U getsem_task1_got_sem = 0;
INT32U getsem_task2_got_sem = 0;
INT32U getsem_task3_got_sem = 0;
INT32U getsem_task4_got_sem = 0;
INT32U getmutex_task1_got_sem=0;
INT32U getmutex_task2_got_sem=0;
INT8U highest;
char sem_owner_task_name[20];



void print_status_task(void* pdata)
	{

		int linea_sent,linea_receive1,linea_receive2,linea_sem_own,linea_getsem1,linea_getsem2;
		int linea_getsem3, linea_getsem4,linea_querysem;
		int columna=2;
		int linea=3;
		char message[4];
		char message2[10];
		char blank [60]="                                                ";
		char linea1[60]= "***********************************************";
		char linea2[60]= "Hello From uCOS-II. We like this RTOS!";
		char linea3[50]= "Number of messages sent by send_task:";
		char linea4[50]= "Messages received by receive_task1:";
		char linea5[50]= "Messages received by receive_task2:";
		char linea6[23]= "Semaphore is owned by:";
		char linea7[50]= "Times getsem_task1 acquired semaphore:";
		char linea8[50]= "Times getsem_task2 acquired semaphore:";
		char linea9[50]= "Times getsem_task3 acquired semaphore:";
		char linea10[50]= "Times getsem_task4 acquired semaphore:";
		char linea11[50]= "The task waiting Sem with highest Prio:";
		borra_lineas_pantalla(3,30);
		MTL_text (columna, linea++, linea1);
		MTL_text (columna, linea++, linea2);
		MTL_text (columna, linea++, blank);linea_sent=linea;
		MTL_text (columna, linea++, linea3);linea_receive1=linea;
		MTL_text (columna, linea++, linea4);linea_receive2=linea;
		MTL_text (columna, linea++, linea5);
		MTL_text (columna, linea++, blank);linea_sem_own=linea;
		MTL_text (columna, linea++, linea6);linea_getsem1=linea;
		MTL_text (columna, linea++, linea7);linea_getsem2=linea;
		MTL_text (columna, linea++, linea8);linea_getsem3=linea;
		MTL_text (columna, linea++, linea9);linea_getsem4=linea;
		MTL_text (columna, linea++, linea10);linea_querysem=linea;
		MTL_text (columna, linea++, linea11);

	  while (1)
	  {
		  OSSchedLock();
		  	 sprintf(message," %04lu",number_of_messages_sent);
		  	 MTL_text (40, linea_sent, message);
		  	 sprintf(message," %04lu",number_of_messages_received_task1);
		  	 MTL_text (40, linea_receive1, message);
		  	 sprintf(message," %04lu",number_of_messages_received_task2);
		  	 MTL_text (40, linea_receive2, message);
		  	 sprintf(message2,"%21s",&sem_owner_task_name[0]);
		  	 MTL_text (24, linea_sem_own, message2);
		  	 sprintf(message," %04lu",getsem_task1_got_sem);
		  	 MTL_text (40, linea_getsem1, message);
		  	 sprintf(message," %04lu",getsem_task2_got_sem);
		  	 MTL_text (40, linea_getsem2, message);
		  	 sprintf(message," %04lu",getsem_task3_got_sem);
		  	 MTL_text (40, linea_getsem3, message);
		  	 sprintf(message," %04lu",getsem_task4_got_sem);
		  	 MTL_text (40, linea_getsem4, message);
		  	 sprintf(message," %04d",highest);
		  	 MTL_text (40, linea_querysem, message);
		  OSSchedUnlock();

	    OSTimeDlyHMSM(0, 0, 1, 0);

	  }

}

// tarea de lectura de los switches
void read_switches() {

	char mensaje[20]="Sensors ON are: \0";
	char mensajetodo[40];
	int SW_value;
	INT8U Error=OS_NO_ERR;
	OS_FLAGS return_code;
	while(1){

	SW_value = *(SW_switch_ptr);
	SW_value = SW_value & 0xFFFF;



	switch (SW_value){
	case(0x00):	{char mensajito[20]=	"NO SENSOR\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x01):	{char mensajito[20]=	"SW ZERO\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x02):	{char mensajito[20]=	"TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x03):	{char mensajito[20]=	"TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x04):	{char mensajito[20]=	"PRESS\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x05):	{char mensajito[20]=	"PRESS\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x06):	{char mensajito[20]=	"PRESS&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x07):	{char mensajito[20]=	"PRESS&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x08):	{char mensajito[20]=	"START\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x09):	{char mensajito[20]=	"START\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0A):	{char mensajito[20]=	"START&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0B):	{char mensajito[20]=	"START&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0C):	{char mensajito[20]=	"START&PRESS\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0D):	{char mensajito[20]=	"START&PRESS\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0E):	{char mensajito[20]=	"START&PRESS&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	case(0x0F):	{char mensajito[20]=	"START&PRESS&TEMP\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	default: 	{char mensajito[20]=	"WRONG SWITCH\0";sprintf(mensajetodo,"%s %s",mensaje,mensajito);}
	break;
	}

	return_code=OSFlagPost(EstadoMotor,(INT8U )SW_value,OS_FLAG_SET,&Error);
	alt_ucosii_check_return_code(Error);
	printf("El valor actual de los switches es %02d\n", return_code);

	borra_lineas_pantalla (22,23);
	MTL_text (2, 22, mensajetodo);

	OSTimeDlyHMSM(0,0,0,300);
	}

}


/*The next two task compete for a shared resource via a semaphore.  The name of
 * the task that owns the semaphore is copied into the global variable
 * sem_owner_task_name[].
 */
void getsem_task1(void* pdata)
{
  INT8U return_code = OS_NO_ERR;

  while (1)
  {
    OSSemPend(shared_resource_sem, 0, &return_code);
    alt_ucosii_check_return_code(return_code);
    strcpy(&sem_owner_task_name[0], "getsem_task1");
    getsem_task1_got_sem++;
    OSSemPost(shared_resource_sem);
    OSTimeDlyHMSM(0, 0, 0, 100);
  }
}

void getsem_task2(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  while (1)
  {
    OSSemPend(shared_resource_sem, 0, &return_code);
    strcpy(&sem_owner_task_name[0], "getsem_task2");
    alt_ucosii_check_return_code(return_code);
    getsem_task2_got_sem++;
    OSSemPost(shared_resource_sem);
    OSTimeDlyHMSM(0, 0, 0, 130);
  }
}
// EJERCICIO 2
void getsem_task3(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  while (1)
  {
    //OSSemPend(shared_resource_sem, 0, &return_code);
    OSSemPend(shared_resource_sem, 100, &return_code); /*Ejercicio 2 g*/
    strcpy(&sem_owner_task_name[0], "getsem_task3");
    alt_ucosii_check_return_code(return_code);
    getsem_task3_got_sem++;
    OSSemPost(shared_resource_sem);
    OSTimeDlyHMSM(0, 0, 0, 100);
  }
}

void getsem_task4(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  OS_SEM_DATA sem_data;
  BOOLEAN stopper=1;
  while (1)
  {
    //OSSemPend(shared_resource_sem, 0, &return_code);
    OSSemAccept(shared_resource_sem);
	return_code=OSSemQuery(shared_resource_sem,&sem_data);
	alt_ucosii_check_return_code(return_code);
	if (sem_data.OSCnt==0){
		if (stopper){
			printf("La tarea 4 se ha comido todos los recursos\n");
			stopper=0;
		}
	}
	else{
		strcpy(&sem_owner_task_name[0], "getsem_task4");
		alt_ucosii_check_return_code(return_code);
		getsem_task4_got_sem++;
	//}

    //OSSemPost(shared_resource_sem); // comentar para el apartado d y f
    //OSTimeDlyHMSM(0, 0, 0, 130);
    OSTimeDlyHMSM(0, 0, 5, 0); /*Ejercicio 2 f*/
	}
  }
}

// Apartado a
void query_sem(void* pdata)
{
INT8U return_code = OS_NO_ERR;
INT8U x,y;
OS_SEM_DATA sem_data;


while (1)
{
	return_code=OSSemQuery(shared_resource_sem,&sem_data);
	alt_ucosii_check_return_code(return_code);
	if(sem_data.OSEventGrp!=0x00){
		y=OSUnMapTbl[sem_data.OSEventGrp];
		x=OSUnMapTbl[sem_data.OSEventTbl[y]];
		highest=(y<<3)+x;
}
	OSTimeDlyHMSM(0, 0, 0, 100);
}
}

//EJERCICIO 2

// EJERCICIO 4

void CHEQUEO_MOTOR() {

	OS_FLAGS Respuesta;
	INT8U Error=OS_NO_ERR;
	while(1){

		Respuesta=OSFlagPend(EstadoMotor,MOTOR_START+PRESION_ACEITE_OK+TEMP_ACEITE_MOTOR_OK,OS_FLAG_WAIT_SET_ALL + OS_FLAG_CONSUME,2000,&Error);

		switch (Error) {
		case OS_ERR_NONE:
		/* Desired flags are available */
			printf("El Motor ha arrancado yupiiii...los flags registrados estan a %02d\n", Respuesta);
		break;
		case OS_ERR_TIMEOUT:
		/* The desired flags were NOT available before .. */
		/* .. 2000 ticks occurred */
			printf("El motor no esta preparado ...\n");
		break;
		}

		OSTimeDlyHMSM(0,0,1,0);

	}
}


// EJERCICIO 4

/*The following task fills up a message queue with incrementing data.  The data
 * is not actually used by the application.  If the queue is full the task is
 * suspended for 1 second.
 */

void send_task(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  char mensaje[]=		"The Queue Message is: ";
  char  mensajito[] =	"...ME GUSTA EL REGGETON!";


  char mensaje_m[]="ESTE ES EL MALDITO MENSAJE";
   char mensaje1[]="ESTE ES EL MENSAJE SECRETO";
   char mensajetodo[50];



   OS_Q_DATA queue_data;

   printf("El mensaje es %s\n",mensaje);
   printf("La cola de mensajes se inicia en la posicion de memoria %ld\n", (unsigned long int) &msgqueueTbl[0]);

   while (1) //llenamos la cola de mensajes cada vez que llamamos a esta funcion, no pasamos un unico mensaje
   {
     return_code = OSQQuery(msgqueue, &queue_data);
     alt_ucosii_check_return_code(return_code);
    if(queue_data.OSNMsgs < MSG_QUEUE_SIZE) /*Check the number of messages*/
     {                                       /*in the message queue*/
       if (queue_data.OSNMsgs == MSG_QUEUE_SIZE_E5) // Size de 9
       {
     	  return_code = OSQPostFront(msgqueue, (void *)&mensaje1[0]); //introducimos el mensaje secreto como LIFO sin Broadcast
     	  alt_ucosii_check_return_code(return_code);
          sprintf(mensajetodo,"%22s %25s",mensaje,mensaje1);
          MTL_text (2, 20, mensajetodo);
       }
       else
       {
     	  return_code = OSQPostOpt(msgqueue, (void *)&mensaje_m[0], OS_POST_OPT_BROADCAST);
     	  alt_ucosii_check_return_code(return_code);
          sprintf(mensajetodo,"%22s %25s",mensaje,mensaje_m);
          MTL_text (2, 20, mensajetodo);
       }


       number_of_messages_sent++;

       printf("La cola tiene %d mensajes y el tamanyo de la cola es %d\n",queue_data.OSNMsgs,queue_data.OSQSize);
     }

    OSTimeDlyHMSM(0, 0, 0,500);
   }
}


/*The next two task pull messages in the queue at different rates.  The number
 * of messages received by the task is incremented when a new message is received
 */
void receive_task1(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  void * msg;
  char mensaje[]="Queue Rx message in 1: ";
  char mensajetodo[50];

  INT8U resultado=1;
  msg=0;
  while (1)
  {
    msg = OSQPend(msgqueue, 0, &return_code);
    alt_ucosii_check_return_code(return_code);
    sprintf(mensajetodo,"%22s %23s",mensaje,(char *)msg);
    MTL_text (2, 25, mensajetodo);
	printf("Receive_task1 ha tomado el mensaje %s desde la posicion de memoria %4lu\n",msg,(unsigned long int)&msg);
    number_of_messages_received_task1++;
    resultado=strcmp(msg,"ESTE ES EL MENSAJE SECRETO");
// EJERCICIO 5 APARTADO D //
    if (resultado==0){
     return_code=OSQFlush(msgqueue);
     alt_ucosii_check_return_code(return_code);
     printf("La cola se ha vaciado\n");
    }
    else
     {
    }

    OSTimeDlyHMSM(0, 0, 3, 0);

  }
}

void receive_task2(void* pdata)
{
  INT8U return_code = OS_NO_ERR;
  void * msg;
  char mensaje[]="Queue Rx message in 1: ";
  char mensajetodo[50];

  INT8U resultado=1;
  msg=0;
  while (1)
  {
    msg = OSQPend(msgqueue, 0, &return_code);
    alt_ucosii_check_return_code(return_code);
    sprintf(mensajetodo,"%22s %23s",mensaje,(char *)msg);
    MTL_text (2, 25, mensajetodo);
	printf("Receive_task2 ha tomado el mensaje %s desde la posicion de memoria %4lu\n",msg,(unsigned long int)&msg);
    number_of_messages_received_task2++;
    resultado=strcmp(msg,"ESTE ES EL MENSAJE SECRETO");
// EJERCICIO 5 APARTADO D //
/*    if (resultado==0){
     return_code=OSQFlush(msgqueue);
     alt_ucosii_check_return_code(return_code);
     printf("La cola se ha vaciado\n");
    }
    else
     {
    }
*/
    OSTimeDlyHMSM(0, 0, 3, 0);

  }
}



/* This function simply creates a message queue and a semaphore
 */

int initOSDataStructs(void)
{
  INT8U ErrorFlags = OS_NO_ERR;

  msgqueue = OSQCreate(&msgqueueTbl[0], MSG_QUEUE_SIZE);
  //shared_resource_sem = OSSemCreate(1);
  shared_resource_sem = OSSemCreate(3); /*ejercicio 2 e*/
  //Ejercicio 4 EFG
  EstadoMotor = OSFlagCreate(0x00, &ErrorFlags);
  alt_ucosii_check_return_code(ErrorFlags);
  return 0;
}


void Mensaje_TaskMtl(char visualiza_string[40], int posicion)
	{
#ifdef PRINT
    	printf("%s\n",visualiza_string);
#endif
    posicion=(linea>ultima_linea)?primera_linea:linea++;
    if (linea>ultima_linea){linea=primera_linea;}
    MTL_text (2, posicion, visualiza_string);
    borra_lineas_pantalla(posicion+1,posicion+2);

    }



void TaskInit(void* pdata)
{
	char visualiza_string[40] = "Hello from Task Init";
	int posicion=0;
	 INT8U return_code = OS_NO_ERR;
  while (1)
  {
		ledg_OFF_All();
		blinky_ledg(green_LED_ptr,8);
		OSSchedLock();	 /* entramos en seccion critica*/
		Mensaje_TaskMtl(visualiza_string, posicion);
		OSSchedUnlock(); /* salimos SC */

	    /*create os data structures */
	    initOSDataStructs();

	    /* create the tasks */
	    initCreateTasks();

	    /*This task is deleted because there is no need for it to run again */
	    return_code = OSTaskDel(OS_PRIO_SELF);
	    alt_ucosii_check_return_code(return_code);

  }
}

void CreateTasks (void)
{
	INT8U return_code = OS_NO_ERR;

	 return_code= OSTaskCreateExt(TaskInit,
	                  NULL,
	                  (void *)&initialize_task_stk[TASK_STACKSIZE-1],
					  INITIALIZE_TASK_PRIORITY,
					  INITIALIZE_TASK_PRIORITY,
					  initialize_task_stk,
	                  TASK_STACKSIZE,
	                  NULL,
	                  0);
	  alt_ucosii_check_return_code(return_code);
}


/*This function creates the tasks used in this example
 */

int initCreateTasks(void)
{
  INT8U return_code = OS_NO_ERR;

  return_code = OSTaskCreateExt(getsem_task1,
                             NULL,
                             (void *)&getsem_task1_stk[TASK_STACKSIZE],
                             GETSEM_TASK1_PRIORITY,
                             GETSEM_TASK1_PRIORITY,
                             getsem_task1_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  return_code = OSTaskCreateExt(getsem_task2,
                             NULL,
                             (void *)&getsem_task2_stk[TASK_STACKSIZE],
                             GETSEM_TASK2_PRIORITY,
                             GETSEM_TASK2_PRIORITY,
                             getsem_task2_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  return_code = OSTaskCreateExt(receive_task1,
                             NULL,
                             (void *)&receive_task1_stk[TASK_STACKSIZE],
                             RECEIVE_TASK1_PRIORITY,
                             RECEIVE_TASK1_PRIORITY,
                             receive_task1_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  return_code = OSTaskCreateExt(receive_task2,
                             NULL,
                             (void *)&receive_task2_stk[TASK_STACKSIZE],
                             RECEIVE_TASK2_PRIORITY,
                             RECEIVE_TASK2_PRIORITY,
                             receive_task2_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  return_code = OSTaskCreateExt(send_task,
                             NULL,
                             (void *)&send_task_stk[TASK_STACKSIZE],
                             SEND_TASK_PRIORITY,
                             SEND_TASK_PRIORITY,
                             send_task_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  return_code = OSTaskCreateExt(print_status_task,
                             NULL,
                             (void *)&print_status_task_stk[TASK_STACKSIZE],
                             PRINT_STATUS_TASK_PRIORITY,
                             PRINT_STATUS_TASK_PRIORITY,
                             print_status_task_stk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_ucosii_check_return_code(return_code);

  /*return_code = OSTaskCreateExt(read_switches,
                              NULL,
                              (void *)&read_switches_stk[TASK_STACKSIZE],
                              READ_SWITCHES_PRIORITY,
                              READ_SWITCHES_PRIORITY,
                              read_switches_stk,
                              TASK_STACKSIZE,
                              NULL,
                              0);
   alt_ucosii_check_return_code(return_code);*/

   // EJERCICIO 2
  /*

   return_code = OSTaskCreateExt(getsem_task3,
                              NULL,
                              (void *)&getsem_task3_stk[TASK_STACKSIZE],
                              GETSEM_TASK3_PRIORITY,
                              GETSEM_TASK3_PRIORITY,
                              getsem_task3_stk,
                              TASK_STACKSIZE,
                              NULL,
                              0);
   alt_ucosii_check_return_code(return_code);

   return_code = OSTaskCreateExt(getsem_task4,
                              NULL,
                              (void *)&getsem_task4_stk[TASK_STACKSIZE],
                              GETSEM_TASK4_PRIORITY,
                              GETSEM_TASK4_PRIORITY,
                              getsem_task4_stk,
                              TASK_STACKSIZE,
                              NULL,
                              0);
   alt_ucosii_check_return_code(return_code);

   return_code = OSTaskCreateExt(query_sem,
                              NULL,
                              (void *)&querysem_stk[TASK_STACKSIZE],
                              QUERYSEM_PRIORITY,
                              QUERYSEM_PRIORITY,
                              querysem_stk,
                              TASK_STACKSIZE,
                              NULL,
                              0);
   alt_ucosii_check_return_code(return_code);

   // EJERCICIO 2


   // EJERCICIO 4

   return_code = OSTaskCreateExt(CHEQUEO_MOTOR,
                                 NULL,
                                 (void *)&chequeomotor_stk[TASK_STACKSIZE],
                                 CHEQUEOMOTOR_PRIORITY,
                                 CHEQUEOMOTOR_PRIORITY,
                                 chequeomotor_stk,
                                 TASK_STACKSIZE,
                                 NULL,
                                 0);
      alt_ucosii_check_return_code(return_code);*/

   // EJERCICIO 4

  return 0;
}

