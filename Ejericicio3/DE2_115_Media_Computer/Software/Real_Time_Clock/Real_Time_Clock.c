/*
 * Real_Time_Clock.c
 *
 *  Created on: 10 de mar. de 2022
 *      Author: Rocabado Rocha, Jose Luis
 */

// -------------------------------------------------------------------------------------------------------------------------
// Universitat Polit�cnica de Val�ncia
// Escuela T�cnica Superior de Ingenieros de Telecomunicaci�n
// -------------------------------------------------------------------------------------------------------------------------
// Sistemas Integrados Digitales
// Curso 2021 - 2022
// -------------------------------------------------------------------------------------------------------------------------
// Nombre del archivo: Real_Time_Clock.c
//
// Descripci�n:
// El siguiente codigo implementa la visualizaci�n de un reloj utilizando interruociones y el timer del sistema. Sus
// especificaciones son:
//      - Horas, minutos y segundos se observan en los displays 7-seg
//      - El timer se configura para generar una interrupci�n cada 100ms con un reloj del sistema de 50MHz
//      - Pulsador KEY3 incrementa las horas en una unidad
//      - Pulsador KEY2 incrementa los minutos en una unidad
//      - El reloj se visualiza ademas en el LCD y en la otra fila se mostrara el nombre
//
// -------------------------------------------------------------------------------------------------------------------------
//      Versi�n: V1.0                   | Fecha Modificaci�n: 10/03/2022
//
//      Autor: Jose Luis Rocabado Rocha
//
// -------------------------------------------------------------------------------------------------------------------------

#include "key_codes.h"	// define los valores para KEY1, KEY2, KEY3
#include "system.h"
#include "sys/alt_irq.h"
#include <stdio.h> //Necesario para el NULL

// Definition of the auxiliar functions
//void interval_timer_isr( );
//void pushbutton_ISR( );
int hex_to_seven (int hex);
int two_hex_to_seven (int two_hex);

volatile int Update_time_flag = 0;

int main(void)
{
	///*Variable definition*///
	// 6 bits para 60, 5 bits para 24. 11
	int hour, min, seg = 0; //hacer una variable para cada parte, y no una global
	int h_7seg, m_7seg, s_7seg;

	/* Peripheral address definitions */
	volatile int * interval_timer_ptr = (int *) TIMER_BASE;	    // Direcci�n Temporizador
	volatile int * KEY_ptr = (int *) PUSHBUTTONS_BASE;			// Direcci�n pulsadores KEY
	volatile int * HEX3_HEX0_ptr	= (int *) HEX3_HEX0_BASE;	// Direcci�n HEX3_HEX0
	volatile int * HEX7_HEX4_ptr	= (int *) HEX7_HEX4_BASE;	// Direcci�n HEX7_HEX4

	/* Configuring timer */
	// 0x4C4B40 -> 5000000 counts
	*(interval_timer_ptr + 0x2) = ( 0x4C4B40 & 0xFFFF); // LCounter
	*(interval_timer_ptr + 0x3) = ( 0x4C4B40 >> 16) & 0xFFFF; // HCounter

	/* Enabling timer and Interrupt Requests */
	*(interval_timer_ptr + 1) = 0x7;	// STOP = 0, START = 1, CONT = 1, ITO = 1
	//alt_irq_register(TIMER_IRQ, NULL, interval_timer_isr);

	/* Configuring pushbuttons */
	*(KEY_ptr + 2) = 0xC; 		/* Enabling interrupts for KEY2 y KEY3*/
	*(KEY_ptr + 3) = 0; /* Edge detect reset */
	//alt_irq_register(PUSHBUTTONS_IRQ, NULL, pushbutton_ISR);

	/* Initialazing 7-segment and LCD*/

	// Hour mask -> 0x1F000 >> 12
	// Minute mask -> 0xFC0 >> 6
	// Second mask -> 0x3F

	//12H,30min,30seg
	hour = 60;
	min = 60;
	seg = 60;
	while(1)
	{
		h_7seg = two_hex_to_seven(hour);
		m_7seg = two_hex_to_seven(min);
		s_7seg = two_hex_to_seven(seg);
		printf("\n %x, ", h_7seg);
		printf("%x, ", m_7seg);
		printf("%x \n", s_7seg);
		printf("%x, ", s_7seg << 16);
		printf("%x \n", h_7seg << 16 | m_7seg);

		*(HEX3_HEX0_ptr) = s_7seg << 16;				// Visualiza el patr�n en HEX3 ... HEX0
	    *(HEX7_HEX4_ptr) = h_7seg << 16 | m_7seg;
	    printf("%x, ", *(HEX3_HEX0_ptr));
	    printf("%x \n", *(HEX7_HEX4_ptr));
	    return 0;
		if(Update_time_flag)
		{

		}
	}

}

/****************************************************************************************
 * Hexadecimal to 7-segment decoder
****************************************************************************************/
int hex_to_seven (int hex)
{
	switch(hex)
	{
		case 0x0:
				  printf("0");
				  return 0b0111111;
				  break;
		case 0x1:
				  printf("1");
				  return 0b0000110;
				  break;
		case 0x2:
				  printf("2");
				  return 0b1011011;
		  	  	  break;
		case 0x3:
				  printf("3");
				  return 0b1001111;
		  	  	  break;
		case 0x4:
				  printf("4");
				  return 0b1100110;
		  	  	  break;
		case 0x5:
				  printf("5");
				  return 0b1101101;
		  	  	  break;
		case 0x6: return 0b1111101;
				  printf("6");
		  	  	  break;
		case 0x7:
				  printf("7");
				  return 0b0100111;
		  	  	  break;
		case 0x8: return 0b1111111;
				  printf("8");
		  	  	  break;
		case 0x9:
				  printf("9");
				  return 0b1100111;
		  	  	  break;
		case 0xa:
				  printf("a");
				  return 0b1110111;
		  	  	  break;
		case 0xb:
				  printf("b");
				  return 0b1111100;
		  	  	  break;
		case 0xc:
				  printf("c");
				  return 0b0111011;
		  	  	  break;
		case 0xd:
				  printf("d");
				  return 0b1011110;
		  	  	  break;
		case 0xe:
				  printf("e");
				  return 0b1111001;
		  	  	  break;
		case 0xf:
				  printf("f");
				  return 0b1110001;
		  	  	  break;
		default:
				  printf("def");
				  return 0b1000000;
		  	  	  break;
	}
}

/****************************************************************************************
 * two digit hex to seven-segment
****************************************************************************************/
int two_hex_to_seven (int two_hex)
{
	int Lresult = hex_to_seven((two_hex % 10) & 0xFF) & 0x7F;
	int Hresult = hex_to_seven((two_hex / 10) & 0xFF) & 0x7F;
	return (Hresult <<8) | Lresult;
}





