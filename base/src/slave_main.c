/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	main file

 Die Software verhält sich wie ein I2C-EEPROM. Die angeforderten Daten werden entweder aus dem txbuffer[] oder dem internen EEPROM gelesen.
 Zu schreibene Daten werden enteder nach rxbuffer[] oder in den internen EEPROM geschrieben.

 Die Aufteilung des Speichers ist eeprom_mapping.h zu entnehmen.
 Änderungen in rxbuffer[] werden in jedem Hauptschleifendurchlauf bearbeitet.
 Neue Eingangswerte werden in jedem Hauptschleifen durchlauf nach txbuffer[] geschrieben.

 Je nachdem welche Werte in den EEPROM geschrieben werden, ändert sich das Verhalten der IO Pins des AVRs.

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

#ifndef F_CPU
#define F_CPU 1000000UL
#endif

//extern
#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <util/delay.h>

//jtronics
#include "twislave.h"

//icke2063
#include <slave_main.h>
#include <slave_config.h>
#include <slave_eeprom_mapping.h>




//###################### Macros (jtronics)
#define uniq(LOW,HEIGHT)	((HEIGHT << 8)|LOW)			// 2x 8Bit 	--> 16Bit
#define LOW_BYTE(x)        	(x & 0xff)					// 16Bit 	--> 8Bit
#define HIGH_BYTE(x)       	((x >> 8) & 0xff)			// 16Bit 	--> 8Bit


#define sbi(ADDRESS,BIT) 	((ADDRESS) |= (1<<(BIT)))	// set Bit
#define cbi(ADDRESS,BIT) 	((ADDRESS) &= ~(1<<(BIT)))	// clear Bit
#define	toggle(ADDRESS,BIT)	((ADDRESS) ^= (1<<BIT))		// Bit umschalten

#define	bis(ADDRESS,BIT)	(ADDRESS & (1<<BIT))		// bit is set?
#define	bic(ADDRESS,BIT)	(!(ADDRESS & (1<<BIT)))		// bit is clear?


//###################### Variablen
	struct IO_pin io_pins[MAX_IO_PINS] = {
			{P_PORT_IO_0,P_PIN_IO_0,P_DDR_IO_0,PIN_IO_0},
			{P_PORT_IO_1,P_PIN_IO_1,P_DDR_IO_1,PIN_IO_1},
			{P_PORT_IO_2,P_PIN_IO_2,P_DDR_IO_2,PIN_IO_2},
			{P_PORT_IO_3,P_PIN_IO_3,P_DDR_IO_3,PIN_IO_3},
			{P_PORT_IO_4,P_PIN_IO_4,P_DDR_IO_4,PIN_IO_4},
			{P_PORT_IO_5,P_PIN_IO_5,P_DDR_IO_5,PIN_IO_5},

			{P_PORT_IO_6,P_PIN_IO_6,P_DDR_IO_6,PIN_IO_6},
			{P_PORT_IO_7,P_PIN_IO_7,P_DDR_IO_7,PIN_IO_7},
			{P_PORT_IO_8,P_PIN_IO_8,P_DDR_IO_8,PIN_IO_8},
			{P_PORT_IO_9,P_PIN_IO_9,P_DDR_IO_9,PIN_IO_9},
			{P_PORT_IO_A,P_PIN_IO_A,P_DDR_IO_A,PIN_IO_A},
			{P_PORT_IO_B,P_PIN_IO_B,P_DDR_IO_B,PIN_IO_B}
			};



//###################### Prototypen
//see main.h

	
int main(void)
{	
 
init();


while(1)
    {
	handleIOpins();
	readIOpins();
	_delay_ms(1);
	
	} //end.while
} //end.main


void init(void)
	{
	cli();
	//### TWI
	init_twi_slave(SLAVE_ADRESSE);			//TWI als Slave mit Adresse slaveadr starten
	sei();
	}
/*
void handlePort(volatile uint8_t *ptr_DDR, volatile uint8_t *ptr_PORT,
		unsigned char eeprom_address, unsigned char tmp_PORT,
		unsigned char enable_mask) {
	unsigned char func = 0;
	for (int pin = 0; pin < 8; pin++) {
		if (enable_mask & (1 << pin)) {
			func = eeprom_read_byte(eeprom_address + pin);

			switch (func) {
			case PIN_DISABLED:
				*ptr_DDR &= ~(1 << pin); //disable PIN
				*ptr_PORT &= ~(1 << pin); //disable PULLUP
				break;
			case PIN_INPUT: //mark pin as input
				*ptr_DDR &= ~(1 << pin); //set DDR "0"
				*ptr_PORT |= (1 << pin); //enable pullup PORT "1"
				break;
			case PIN_SWITCH: //mark pin as output
				*ptr_DDR |= (1 << pin); //set DDR "1"
				if (tmp_PORT & (1 << pin)) {
					//set "ON"
					*ptr_PORT |= (1 << pin);
				} else {
					//set "OFF"
					*ptr_PORT &= ~(1 << pin);
				}
				break;
			case PIN_PULSE: //mark pin as output
				*ptr_DDR |= (1 << pin); //set DDR "1"

				*ptr_PORT |= (1 << pin); //set ON
				_delay_ms(300); //wait
				*ptr_PORT &= ~(1 << pin); //set OFF
				break;
			default:
				*ptr_DDR &= ~(1 << pin); //disable PIN
				*ptr_PORT &= ~(1 << pin); //disable PULLUP
				break;
			}
		}
	}
}
*/


void handleIOpins(void) {

	unsigned char IO_Port;
	unsigned short eeprom_address = EEPROM_IO_START;
	unsigned char func = 0;
	
	unsigned char *cur_DDR=0;
	unsigned char *cur_PORT=0;


	//loop over all virtual IO Pins
	for (int pin = 0; pin < MAX_IO_PINS; pin++) {

		IO_Port = VIRTUAL_IO_START +(pin/8);

		func = eeprom_read_byte(eeprom_address);	//read function code from eeprom
		eeprom_address += sizeof(struct I2C_Slave_IO_PIN);

		cur_PORT = io_pins[pin].PPORT;
		cur_DDR	 = io_pins[pin].PDDR;

		switch (func) {
		case PIN_DISABLED:
			*cur_DDR	&= ~(1 << io_pins[pin].pin); //disable PIN
			*cur_PORT	&= ~(1 << io_pins[pin].pin); //disable PULLUP
			break;
		case PIN_INPUT: //mark pin as input
			*cur_DDR &= ~(1 << io_pins[pin].pin); //set DDR "0"
			*cur_PORT |= (1 << io_pins[pin].pin); //enable pullup PORT "1"
			break;
		case PIN_SWITCH: //mark pin as output
			*cur_DDR |= (1 << io_pins[pin].pin); //set DDR "1"
			if ( bis(rxbuffer[IO_Port],(pin%8)) ) {
				//set "ON"
				*cur_PORT |= (1 << io_pins[pin].pin);
			} else {
				//set "OFF"
				*cur_PORT &= ~(1 << io_pins[pin].pin);
			}
			break;
		case PIN_PULSE: //mark pin as output
			*cur_DDR |= (1 << io_pins[pin].pin); //set DDR "1"
			if( bis(rxbuffer[IO_Port],(pin%8)) ){	//only handle active pins
				*cur_PORT |= (1 << io_pins[pin].pin); //set ON
				_delay_ms(300); //wait
				cbi(rxbuffer[IO_Port],pin%8);
			}			
			*cur_PORT &= ~(1 << io_pins[pin].pin); //set OFF

			break;
		default:
			*cur_DDR &= ~(1 << io_pins[pin].pin); //disable PIN
			*cur_PORT &= ~(1 << io_pins[pin].pin); //disable PULLUP
			break;
			}
	}
}

void readIOpins(void){
	unsigned char IO_Port;
	unsigned char func = 0;
	unsigned short eeprom_address;
	unsigned char tmp_PIN = 0x00;

	unsigned char *cur_PIN=0;

	for (int pin = 0; pin < MAX_IO_PINS; pin++){

		IO_Port = VIRTUAL_IO_START +(pin/8);

		eeprom_address = EEPROM_IO_START+(sizeof(struct I2C_Slave_IO_PIN)*pin);
		func = eeprom_read_byte(eeprom_address);	//read function code from eeprom

		cur_PIN = io_pins[pin].PPIN;

		switch (func) {
			case PIN_DISABLED:
				cbi(tmp_PIN,(pin%8));
				break;
			case PIN_INPUT: //mark pin as output

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {
					//set "ON"
					sbi(tmp_PIN,pin%8);
				} else {
					//set "OFF"
					cbi(tmp_PIN,pin%8);
				}
				break;
			case PIN_SWITCH: //mark pin as output

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {
					//set "ON"
					sbi(tmp_PIN,pin%8);
				} else {
					//set "OFF"
					cbi(tmp_PIN,pin%8);
				}
				break;
			case PIN_PULSE: //mark pin as output

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {
					//set "ON"
					sbi(tmp_PIN,pin%8);
				} else {
					//set "OFF"
					cbi(tmp_PIN,pin%8);
				}
				break;
			default:
				sbi(tmp_PIN,(pin%8));
				break;
		}

		if((pin%8) == 7){
			cli();
			txbuffer[VIRTUAL_IO_START]	= tmp_PIN;
			tmp_PIN = 0x00;
			sei();

		}

	}
	cli();
	txbuffer[VIRTUAL_IO_START+1]	= tmp_PIN;
	tmp_PIN = 0x00;
	sei();
}
