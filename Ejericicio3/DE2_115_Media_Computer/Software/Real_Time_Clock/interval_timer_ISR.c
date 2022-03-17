#include "key_codes.h" 	// define los valores de KEY1, KEY2, KEY3
#include "system.h"
#include "sys/alt_irq.h"

extern volatile int msec_counter;

void interval_timer_isr( )
{ 
	volatile int * interval_timer_ptr = (int *) TIMER_BASE;

	*(interval_timer_ptr) = 0; 				// Borra la interrupci�n
	msec_counter++; // this counts up to 10 to count seconds an then re-starts
	return;
}

