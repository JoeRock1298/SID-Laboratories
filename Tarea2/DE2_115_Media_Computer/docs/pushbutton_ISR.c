#include "key_codes.h" 	// define los valores de KEY0, KEY1, KEY2, KEY3
#include "system.h"
#include "sys/alt_irq.h"

extern volatile int key_pressed;

void pushbutton_ISR( )
{
	volatile int * KEY_ptr = (int *) PUSHBUTTONS_BASE;
	int press;

	press = *(KEY_ptr + 3);					// lee el registro de los pulsadores
	*(KEY_ptr + 3) = 0; 					// borra la interrupcion

	if (press & 0x2)						// KEY1
		key_pressed = KEY1;
	else if (press & 0x4)					// KEY2
		key_pressed = KEY2;
	else if (press & 0x1)					// KEY0
		key_pressed = KEY0;
	else									// press & 0x8, means KEY3
		key_pressed = KEY3;
	return;
}
