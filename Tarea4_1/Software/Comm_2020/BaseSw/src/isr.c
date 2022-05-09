/*
 * isr.c
 *
 *  Created on: 17 de nov. de 2020
 *      Author: mpeir
 */

#include "..\inc\isr.h"

/**
 * Subrutina de manejo de interrupcion por pulsador incrustada en uCOS
 */
void pushbutton_isr() {
OSIntEnter();
	int KEY_value, SW_value;
	static int num_int=0; 			// static permite que el valor no se inicia a 0 cada vez que se entra en la int
	char vector[27];

	KEY_value = *(KEY_ptr + 3);		// Leemos registro de pulsadores
	SW_value = *(SW_switch_ptr);	// Leemos registro de Switches
	SW_value = SW_value & 1;

	*(KEY_ptr + 3) = 0;				// Borrar la interrupcion

	if (KEY_value == 0x2) {			// Texto de Atencion Interrupcion y contador de veces
		borra_lineas_pantalla(2,3);
		if (num_int<100)
			{
			++num_int;
			sprintf(vector,"Interrupcion Activada= %02u",num_int);
			MTL_text (21,2, vector);
#ifdef PRINT
			printf("numero de interrupcion = %02u\n",num_int);
#endif
			linea=3;
			}
		else
			{
			num_int=0;
			sprintf(vector,"Interrupcion LIMITE= %02u",num_int);
			MTL_text (21,2, vector);
#ifdef PRINT
			printf("ALCANZADO LIMITE DE INTERRUPCIONES = %02u\n",num_int);
#endif
			linea=3;
			}

	KEY_value=0;
	}
OSIntExit();
}



