#include "system.h"
#include "sys/alt_irq.h"

//H level enable
extern volatile int VGA_enable;

void switch_ISR( )
{
	int read_value;
	volatile int * SWITCH_ptr = (int *) SWITCHES_BASE; // dirección SW
	read_value = *(SWITCH_ptr);
	*(SWITCH_ptr + 3) = 0; 					// borra la interrupcion
	//since we are only using SW0 to generate interrupts we don't need if statement
	if(read_value == 0)
	{
		VGA_enable = 0;
	}
	else
	{
		VGA_enable = 1;
	}
	return;
}
