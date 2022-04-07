#include "key_codes.h" 	// define los valores de KEY1, KEY2, KEY3
#include "system.h"
#include "sys/alt_irq.h"
#include <stdio.h>

extern volatile int msec_counter;

void interval_timer_isr( )
{ 
	volatile int * interval_timer_ptr = (int *) AVALON_TIMER_32B_0_BASE;

	*(interval_timer_ptr + 0x2) = 0x3;	// CLEAR_IRQ = 1, START = 1;
	printf("%d test \n", *(interval_timer_ptr + 0x3));
	// Setting seconds flag
	msec_counter = 1;
	//Enabling interrupt again
	*(interval_timer_ptr + 0x2) = 0x1;	// CLEAR_IRQ = 0, START = 1;
	return;
}

