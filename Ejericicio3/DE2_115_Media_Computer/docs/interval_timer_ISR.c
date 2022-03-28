#include "key_codes.h" 	// define los valores de KEY1, KEY2, KEY3
#include "system.h"
#include "sys/alt_irq.h"

extern volatile int msec_counter;
extern volatile int frame_refresh;

void interval_timer_isr( )
{ 
	volatile int * interval_timer_ptr = (int *) TIMER_BASE;

	*(interval_timer_ptr) = 0; 				// Borra la interrupci�n
	// Count up to 10 to count seconds (reset done in main "Real_Time_Clock.c")
	msec_counter++;
	// Count up to 10 to count 2.4s to refresh vga screen (reset done in main "Real_Time_Clock.c")
	frame_refresh++;
	return;
}
