/*
 * led_intermitente.c
 *
 *  Created on: 28 de feb. de 2022
 *      Author: jororoc
 */

#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
int main()
{
	printf("Hello from Nios II!\n");
	int count = 0;
	int delay; //seconds -> a�adir elemento hardware (contador)
	while(1)
	{
		IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE, count & 0xFF);
		delay = 0;
		while(delay<200000)
		{
			delay++;
		}
		count++;
	}
	return 0;
}



