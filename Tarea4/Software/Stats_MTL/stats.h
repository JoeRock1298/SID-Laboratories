/*
 * stats.h
 *
 *  Created on: 14 de ene. de 2021
 *      Author: mpeir
 */

#ifndef STATS_H_
#define STATS_H_

#include "alt_ucosii_simple_error_check.h"

/* _____________CUERPOS DE FUNCIONES_______________________________*/

//Funcion para crear recuadros en la pantalla//
void MTL_box(int x1, int y1, int x2, int y2, short pixel_color)
{
	int offset, row, col;
  	volatile short * pixel_buffer = (short *) SRAM_BASE;	// MTL pixel buffer

	for (row = y1; row <= y2; row++)
	{
		col = x1;
		while (col <= x2)
		{
			offset = (row << 9) + col;
			*(pixel_buffer + offset) = pixel_color;
			++col;
		}
	}
}

//Funcion para mostrar texto por la pantalla//
void MTL_text(int x, int y, char * text_ptr)
{
	int offset;
  	volatile char * character_buffer = (char *)  MTL_CHAR_BUFFER_AVALON_CHAR_BUFFER_SLAVE_BASE;	// MTL character buffer

  	offset = (y << 6) + x;
  	while ( *(text_ptr) )
  	{
  		*(character_buffer + offset) = *(text_ptr);
  		++text_ptr;
  		++offset;
  	}

}

// Funcion para borrar lineas de MTL
void borra_lineas_pantalla(int lineas)
{
	int i;
	// borra pantalla
		for (i=2;i<lineas;i++){
			MTL_text(0,i,"                                                         ");
		}

}




#endif /* STATS_H_ */
