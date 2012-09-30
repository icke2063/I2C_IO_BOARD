/*******************************************************
 Author:					Manfred Langemann
 mailto:					Manfred.Langemann ät t-online.de
 Begin of project:			25.03.2007
 Latest version generated:	25.03.2007
 Filename:					RS232.c
 Description:    			Implementation of RS232 Interface

 Public Functions:


 Internal Functions:

Examples of "printf":

	uint8_t tmp;
	uint16_t UINT16;
	uint32_t UINT32;
	double	wert;

	tmp = 202;
	UINT16 = 2034;
	UINT32 = 1198654466L;
	wert = 1.3456e-3;

	printf ("tmp = %d\n", tmp);
	printf ("UINT16 = %d\n", UINT16);
	printf ("UINT32 = %ld\n", UINT32);

	printf ("tmp = 0x%02X\n", tmp);
	printf ("UINT16 = 0x%04X\n", UINT16);
	printf ("UINT32 = 0x%08lX\n", UINT32);

	printf ("Wert = %f\n", wert); ---> geht nicht
	printf ("Wert = %6.2f\n", wert);  ---> geht nicht


 *******************************************************/
#include <stdio.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "General.h"
#include "RS232.h"
/*
** Private Functions
** None
*/
/*
** Baud Rate für die Serielle Schnittstelle
*/
#define BAUD_RATE		9600
/*
** Where the byte via UART Interrupt will be saved
** Use 'volatile', otherwise, data is lost
*/
volatile uint8_t	UART_Byte;
volatile uint8_t	UART_Byte_Status;
/*
** Define a stream for the printf function, using the UART
*/
FILE uart_str = FDEV_SETUP_STREAM(RS232_putchar, NULL, _FDEV_SETUP_RW);

/*******************************************************
 Function: RS232_Init

 Purpose: Initialise the RS232 serial link

 Input Parameter: None

 Return Value: None

*******************************************************/
void RS232_Init (void)
	{
/*
** Enable TXEN and RXEN in register UCSRB
*/
	UCSRB |= (1 << TXEN);
	UCSRB |= (1 << RXEN);
/*
** Set transmission type, Asynchron 8N1
*/
	UCSRC |= (1 << URSEL)|(3<<UCSZ0);
/*
** Set baud rate
*/
    UBRRH = (uint8_t) ((SYSCLOCK / (BAUD_RATE * 16L) - 1)>>8);
    UBRRL = (uint8_t) (SYSCLOCK / (BAUD_RATE * 16L) - 1);
/*
** Open a channel for printf
*/
	stdout = &uart_str;
//	fdevopen (RS232_putchar, NULL);
/*
** Set the UART CMD bytes
*/
	UART_Byte = 0;
	UART_Byte_Status = 0;
	}
/*******************************************************
 Function: RS232_putchar

 Purpose: Initialise function "printf "

 Input Parameter: char buffer

 Return Value:
 	Value = 0

*******************************************************/
int RS232_putchar (char c, FILE *stream)
	{
/*
** Check on NEWLINE
*/
	if (c == '\n')
  		{
		RS232_putchar ('\r', stream);
		}
/*
** Wait until previous character is sent
*/  
	loop_until_bit_is_set(UCSRA, UDRE);
/*
** Send character to UART
*/
	UDR = c;

	return 0;
	}
/*******************************************************
 Function: RS232_PutByte

 Purpose: Send to the UART a data byte

 Input Parameter: the byte

 Return Value: None
 	Value = 0

*******************************************************/
void RS232_PutByte (uint8_t Byte)
	{
/*
** Wait until previous character is sent
*/
	while (!(UCSRA & (1<<UDRE)));
/*
** Send byte to UART
*/
	UDR = Byte;

	return;
	}
/*******************************************************
 Function: RS232_Put_unit16

 Purpose: Send a two byte word (uin16_t) to the UART, LSB first

 Input Parameter: Address of uint16_t

 Return Value: None

*******************************************************/
void RS232_Put_unit16 (uint16_t *Word)
	{
	uint8_t 	i;
	uint8_t		*py;

	py = (uint8_t*) Word;
	for (i=0;i<2;i++)
		{
		RS232_PutByte (*py++);
		}

	return;
	}
/*******************************************************
 Function: RS232_Put_unit32

 Purpose: Send a four byte word (uin32_t) to the UART, LSB first

 Input Parameter:  Address of uint32_t

 Return Value: None
 
*******************************************************/
void RS232_Put_unit32 (uint32_t *DWord)
	{
	uint8_t 	i;
	uint8_t		*py;

	py = (uint8_t*) DWord;

	for (i=0;i<4;i++)
		{
		RS232_PutByte (*py++);
		}

	return;
	}
/*******************************************************
 Function: RS232_GetByte

 Purpose: Get from the UART a byte

 Input Parameter: None

 Return Value: The UART byte

*******************************************************/
uint8_t RS232_GetByte (void)
	{
/*
** Wait until byte is available
*/
	while (!(UCSRA &(1<<RXC)));
/*
** Get and return the byte from UART
*/	
	return UDR;
	}
/*******************************************************
 Function: Interrupt Vector Routine UART RX complete

 Purpose:
	Will be called by interrupt,
	when a byte has been received by the UART
	
 *******************************************************/
//ISR(SIG_USART_RECV)
//	{
/*
** Disable all interrupts
*/
//	cli ();
/*
** Get the byte from the UART
*/
//	UART_Byte = UDR;
//	UART_Byte_Status = 1;
/*
** Enable all interrupts
*/
//	sei ();
//	}
/*******************************************************
 Function: Printf512

 Purpose: Print 512 bytes in one block with header text

 Input Parameter:
 	uint8_t	*Buffer:	The data to be printed
	char	*Text:		The header text

 Return Value: None

*******************************************************/
//void Printf512 (uint8_t *Buffer, char *Text)
//	{
//	uint16_t	i,j,Numbytes;
//	Numbytes = 512;
//	j = 0;
//	printf (Text);
//	for (i=0;i<(Numbytes/16);i++)
//		{
//		printf ("%3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d %3d\n", Buffer[j],Buffer[j+1],Buffer[j+2],Buffer[j+3],Buffer[j+4],Buffer[j+5],Buffer[j+6],Buffer[j+7],Buffer[j+8],Buffer[j+9],Buffer[j+10],Buffer[j+11],Buffer[j+12],Buffer[j+13],Buffer[j+14],Buffer[j+15]);
//		j = j+16;
//		}
//	printf ("\n");
//	}
