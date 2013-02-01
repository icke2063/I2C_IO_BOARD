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

#define SLAVE_ADRESSE 0x51

#define MAX_IO_PINS 12
#define MAX_IO_PIN_NAME_LENGTH	15


/**
*intern IO Port mapping
* - P_PORT_OI_?: pointer to port register
* - P_PIN_IO_? : pointer to pin register
* - P_DDR_IO_? : pointer to ddr register
* - PIN_IO_?   : pin of associated port
*
*/
#define P_PORT_IO_0	&PORTC
#define P_PORT_IO_1	&PORTC
#define P_PORT_IO_2	&PORTC
#define P_PORT_IO_3	&PORTC
#define P_PORT_IO_4	&PORTD
#define P_PORT_IO_5	&PORTD

#define P_PORT_IO_6	&PORTD
#define P_PORT_IO_7	&PORTD
#define P_PORT_IO_8	&PORTD
#define P_PORT_IO_9	&PORTD
#define P_PORT_IO_A	&PORTD
#define P_PORT_IO_B	&PORTD

#define P_DDR_IO_0	&DDRC
#define P_DDR_IO_1	&DDRC
#define P_DDR_IO_2	&DDRC
#define P_DDR_IO_3	&DDRC
#define P_DDR_IO_4	&DDRD
#define P_DDR_IO_5	&DDRD

#define P_DDR_IO_6	&DDRD
#define P_DDR_IO_7	&DDRD
#define P_DDR_IO_8	&DDRD
#define P_DDR_IO_9	&DDRD
#define P_DDR_IO_A	&DDRD
#define P_DDR_IO_B	&DDRD

#define P_PIN_IO_0	&PINC
#define P_PIN_IO_1	&PINC
#define P_PIN_IO_2	&PINC
#define P_PIN_IO_3	&PINC
#define P_PIN_IO_4	&PIND
#define P_PIN_IO_5	&PIND

#define P_PIN_IO_6	&PIND
#define P_PIN_IO_7	&PIND
#define P_PIN_IO_8	&PIND
#define P_PIN_IO_9	&PIND
#define P_PIN_IO_A	&PIND
#define P_PIN_IO_B	&PIND

#define PIN_IO_0	1
#define PIN_IO_1	3
#define PIN_IO_2	2
#define PIN_IO_3	0
#define PIN_IO_4	0
#define PIN_IO_5	1

#define PIN_IO_6	2
#define PIN_IO_7	3
#define PIN_IO_8	4
#define PIN_IO_9	5
#define PIN_IO_A	6
#define PIN_IO_B	7


#endif //_SLAVE_CONFIG_H
