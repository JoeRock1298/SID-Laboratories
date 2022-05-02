/*
 * task_config.h
 *
 *  Created on: 16 de nov. de 2020
 *      Author: mpeir
 */

#ifndef BASESW_CONFIG_TASK_CONFIG_H_
#define BASESW_CONFIG_TASK_CONFIG_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <stdio.h>
#include "includes.h"
#include "app_config.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

// Opcion de eliminar los printf por JTAG
#define PRINT


/* Definition of Task Stacks */
#define   TASK_STACKSIZE       2048
OS_STK    task1_stk[TASK_STACKSIZE];
OS_STK    task2_stk[TASK_STACKSIZE];
OS_STK    task3_stk[TASK_STACKSIZE];
OS_STK    task4_stk[TASK_STACKSIZE];
OS_STK    taskinit_stk[TASK_STACKSIZE];


/* Definition of Task Priorities */

#define TASK1_PRIORITY      1
#define TASK2_PRIORITY      2
#define TASK3_PRIORITY      3
#define TASK4_PRIORITY      4
#define TASK_INIT_PRIORITY  8


/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/




/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/





/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/




/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

extern void Mensaje_TaskMtl();

extern void task1(void* pdata);
extern void task2(void* pdata);
extern void task3(void* pdata);
extern void task4(void* pdata);
extern void TaskInit(void* pdata);

/******************************************************************************/
/*----------------------------Task Prototypes---------------------------------*/
/******************************************************************************/

extern void ListTask(void);
extern void CreateTasks(void);


#endif /* APPSW_CONFIG_TASK_CONFIG_H_ */
