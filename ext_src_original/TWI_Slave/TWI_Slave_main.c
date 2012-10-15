/*******************************************************
 Author:					Manfred Langemann
 mailto:					Manfred.Langemann ät t-online.de
 Begin of project:			04.01.2008
 Latest version generated:	04.01.2008
 Filename:					Main.c
 Description:    			Main routine for testing
 							TWI-Slave-main.c
 ********************************************************/
#include <stdio.h>
#include <avr/interrupt.h>

#include "General.h"
#include "RS232.h"
#include "Delay.h"
#include "TWI_Slave.h"
/*
** This main programm demonstrates how to use the 
** implemented TWI slave functions. These are:
**	TWIS_Init
**	TWIS_ReadAck
**	TWIS_ReadNack
**	TWIS_Write
**	TWIS_Stop
**	TWIS_ResonseRequired
**
** For testing this program, use the program
** TWI_Master_main.c in the slave uC and connect the
** two TWI lines properly (don't forget to also
** connect GND between Master and Slave!)
**
** Used uC for Slave is ATMega8
*/
int main (void)
	{
	uint8_t		i=0;
	uint8_t		j=0;
	uint8_t		byte[8];
	uint8_t		TWIS_ResonseType;
/*
** Clear any interrupt
*/
	cli ();
/*
** Wait 1 second for POR
*/
	Delay_ms (500);
/*
** Initiate RS232
*/
	RS232_Init ();
	printf ("Hello world...\n");
/*
** Start TWI Slave with address 15 and bitrate of 100000 Hz
*/
	TWIS_Init (15, 100000);

	while (1)
		{
/*
** Check wether something is to do for the TWI slave interface
*/
		if (TWIS_ResonseRequired (&TWIS_ResonseType))
			{
			switch (TWIS_ResonseType)
				{
/*
** Slave is requests to read bytes from the master.
** It is expliciltely assumed, that the master sends 8 bytes
*/
				case TWIS_ReadBytes:
					for (i=0;i<7;i++)
						{
						byte[i] = TWIS_ReadAck ();
						printf ("Byte read: %d\n",byte[i]);
						}
					byte[7] = TWIS_ReadNack ();
					printf ("Byte read: %d\n",byte[7]);
					TWIS_Stop ();
					break;
/*
** Slave is requested to send bytes to the master.
** It is expliciltely assumed, that the master expects 8 bytes
*/
				case TWIS_WriteBytes:
					for (i=0;i<8;i++)
						{                   
						TWIS_Write (j++);
						printf ("Byte sent:  %d\n", j-1);
						}
				    TWIS_Stop ();
					break;
				}
			}
/*
** Do something else, e.g.
*/
		i++;
		}
	return 0;
	}
