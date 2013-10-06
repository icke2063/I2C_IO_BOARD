/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	I2C slave config file

 Dieses Programm ist freie Software. Sie k�nnen es unter den Bedingungen der
 GNU General Public License, wie von der Free Software Foundation ver�ffentlicht,
 weitergeben und/oder modifizieren, entweder gem�� Version 2 der Lizenz oder
 (nach Ihrer Option) jeder sp�teren Version.

 Die Ver�ffentlichung dieses Programms erfolgt in der Hoffnung,
 da� es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE,
 sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT
 F�R EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License.

 Sie sollten eine Kopie der GNU General Public License zusammen mit diesem
 Programm erhalten haben.
 Falls nicht, schreiben Sie an die Free Software Foundation,
 Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
------------------------------------------------------------------------------*/
#ifndef _SLAVE_CONFIG_H_
#define _SLAVE_CONFIG_H_

#include <avr/iom8.h>
#include <default_iopin.h>

/// Slave Identification Number
/**
 * This number is used by i2c master to identify this i2c slave as "i2c_io_board"
 */
#define	SLAVE_ID	0x2A
/// default I2C address if value of eeprom is unusable
#define DEFAULT_SLAVE_ADRESSE 0x51
/// count of real useable pins
#define COUNT_IO_PINS 12	//prototype board


/**
 * pin mapping
 * - port pointer	[out]
 * - pin pointer	[in]
 * - ddr pointer
 * - pin number
 */

///UARTTX
#undef UARTTX_PORT
	#define UARTTX_PORT	&PORTD
#undef UARTTX_PIN
	#define UARTTX_PIN	&PIND
#undef UARTTX_DDR
	#define UARTTX_DDR	&DDRD
#undef UARTTX_PINNR
	#define UARTTX_PINNR	1

///PIN _0
#undef VIO_PORT_0
	#define VIO_PORT_0	&PORTC
#undef VIO_PIN_0
	#define VIO_PIN_0	&PINC
#undef VIO_DDR_0
	#define VIO_DDR_0	&DDRC
#undef VIO_PINNR_0
	#define VIO_PINNR_0	2

///PIN _1
#undef VIO_PORT_1
	#define VIO_PORT_1	&PORTC
#undef VIO_PIN_1
	#define VIO_PIN_1	&PINC
#undef VIO_DDR_1
	#define VIO_DDR_1	&DDRC
#undef VIO_PINNR_1
	#define VIO_PINNR_1	3

///PIN _2
#undef VIO_PORT_2
	#define VIO_PORT_2	&PORTC
#undef VIO_PIN_2
	#define VIO_PIN_2	&PINC
#undef VIO_DDR_2
	#define VIO_DDR_2	&DDRC
#undef VIO_PINNR_2
	#define VIO_PINNR_2	1

///PIN _3
#undef VIO_PORT_3
	#define VIO_PORT_3	&PORTC
#undef VIO_PIN_3
	#define VIO_PIN_3	&PINC
#undef VIO_DDR_3
	#define VIO_DDR_3	&DDRC
#undef VIO_PINNR_3
	#define VIO_PINNR_3	0

///PIN _4
#undef VIO_PORT_4
	#define VIO_PORT_4	&PORTD
#undef VIO_PIN_4
	#define VIO_PIN_4	&PIND
#undef VIO_DDR_4
	#define VIO_DDR_4	&DDRD
#undef VIO_PINNR_4
	#define VIO_PINNR_4	0

///PIN _5
#undef VIO_PORT_5
	#define VIO_PORT_5	&PORTD
#undef VIO_PIN_5
	#define VIO_PIN_5	&PIND
#undef VIO_DDR_5
	#define VIO_DDR_5	&DDRD
#undef VIO_PINNR_5
	#define VIO_PINNR_5	1

///PIN _6
#undef VIO_PORT_6
	#define VIO_PORT_6	&PORTD
#undef VIO_PIN_6
	#define VIO_PIN_6	&PIND
#undef VIO_DDR_6
	#define VIO_DDR_6	&DDRD
#undef VIO_PINNR_6
	#define VIO_PINNR_6	2

///PIN _7
#undef VIO_PORT_7
	#define VIO_PORT_7	&PORTD
#undef VIO_PIN_7
	#define VIO_PIN_7	&PIND
#undef VIO_DDR_7
	#define VIO_DDR_7	&DDRD
#undef VIO_PINNR_7
	#define VIO_PINNR_7	3

///PIN _8
#undef VIO_PORT_8
	#define VIO_PORT_8	&PORTD
#undef VIO_PIN_8
	#define VIO_PIN_8	&PIND
#undef VIO_DDR_8
	#define VIO_DDR_8	&DDRD
#undef VIO_PINNR_8
	#define VIO_PINNR_8	4

///PIN _9
#undef VIO_PORT_9
	#define VIO_PORT_9	&PORTD
#undef VIO_PIN_9
	#define VIO_PIN_9	&PIND
#undef VIO_DDR_9
	#define VIO_DDR_9	&DDRD
#undef VIO_PINNR_9
	#define VIO_PINNR_9	5

///PIN _A
#undef VIO_PORT_A
	#define VIO_PORT_A	&PORTD
#undef VIO_PIN_A
	#define VIO_PIN_A	&PIND
#undef VIO_DDR_A
	#define VIO_DDR_A	&DDRD
#undef VIO_PINNR_A
	#define VIO_PINNR_A	6

///PIN _B
#undef VIO_PORT_B
	#define VIO_PORT_B	&PORTD
#undef VIO_PIN_B
	#define VIO_PIN_B	&PIND
#undef VIO_DDR_B
	#define VIO_DDR_B	&DDRD
#undef VIO_PINNR_B
	#define VIO_PINNR_B	7

#endif //_SLAVE_CONFIG_H
