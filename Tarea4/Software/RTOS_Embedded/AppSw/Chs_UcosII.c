
/* *******************************************
 * CHS EJERCICIO 1 RTOS
 * Profesor: Marcos Martinez Peiro
 * mpeiro@eln.upv.es
 * *******************************************/


#include "Chs_UcosII.h"




/* The main function creates the tasks and starts multi-tasking */
int main(void)
{
	Init_App();

	CreateTasks();

	OSStart();

	return 0;
}





/******************************************************************************
*                                                                             *
* MIEMBROS DEL GRUPO:                                                         *
*                                                                             *
*                                                                             *
*                                                                             *
* 																			  *
******************************************************************************/
