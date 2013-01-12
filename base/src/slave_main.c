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
#include <S0_config.h>
#include <S0.h>


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


void handleIOpins(void) {

	unsigned char IO_Port;								/* index for rxbuffer */
	unsigned short eeprom_address = EEPROM_IO_START;	/* address of I2C-address in eeprom */
	unsigned char func = 0;								/* pin function code */
	
	unsigned char *cur_DDR=0;							/* pointer to DDR register */
	unsigned char *cur_PORT=0;							/* pointer to I/O Port */

	unsigned char S0_0 = 0;
	unsigned char S0_1 = 0;


	for (int pin = 0; pin < MAX_IO_PINS; pin++) {	/* loop over all virtual IO Pins */

		/*
		 * first get all needed address information for current pin/port
		 * - the "action" data is written by i2c into the rxbuffer -> need correct rxbuffer address
		 * - the function of the current pin is readout from the eeprom -> need correct eeprom address
		 */

		IO_Port = VIRTUAL_IO_START +(pin/8);	/* calc current port rxbuffer address*/

		eeprom_address = EEPROM_IO_START+(sizeof(struct I2C_Slave_IO_PIN)*pin);		/* calc current funtion code eeprom address */
		eeprom_busy_wait ();
		func = eeprom_read_byte(eeprom_address);	/* read function code from eeprom */

		cur_PORT = io_pins[pin].PPORT;				/* get pointer to current port */
		cur_DDR	 = io_pins[pin].PDDR;				/* get pointer to current datadirectionregister */

		switch (func) {	/* handle current pin by function code */
		case PIN_DISABLED:	/* pin is marked as disabled */
			*cur_DDR	&= ~(1 << io_pins[pin].pin); //disable PIN
			*cur_PORT	&= ~(1 << io_pins[pin].pin); //disable PULLUP
			break;
		case PIN_INPUT: /* pin marked as input -> set as input nothing else to to (value is readout @readIOpins() */
			*cur_DDR &= ~(1 << io_pins[pin].pin); //set DDR "0"
			*cur_PORT |= (1 << io_pins[pin].pin); //enable pullup PORT "1"
			break;
		case PIN_SWITCH: /* pin marked as output -> set as output and set the value of the specific bit of rxbuffer*/
			*cur_DDR |= (1 << io_pins[pin].pin); /* set DDR "1" -> output */
			if ( bis(rxbuffer[IO_Port],(pin%8)) ) {
				//set "ON"
				*cur_PORT &= ~(1 << io_pins[pin].pin);
			} else {
				//set "OFF"
				*cur_PORT |= (1 << io_pins[pin].pin);
			}
			break;
		case PIN_PULSE: /* pin marked as output -> set as output and pulse the specific pin */
			*cur_DDR |= (1 << io_pins[pin].pin); /* set DDR "1" -> output */
			if( bis(rxbuffer[IO_Port],(pin%8)) ){	//only handle active pins
				*cur_PORT &= ~(1 << io_pins[pin].pin); //set ON
				_delay_ms(300); /* wait 300ms @todo set eeprom address for dynamic usage */
				cbi(rxbuffer[IO_Port],pin%8); /* set bit to 0 */
			}			
			*cur_PORT |= (1 << io_pins[pin].pin); //set OFF

			break;
		case PIN_S0:
			/*
			 * S0 functionality
			 *
			 * @todo test this function
			 */

			//INT0
			if((cur_PORT == P_S0_0_PORT) && (cur_DDR == P_S0_0_DDR) && (io_pins[pin].pin == S0_0_PIN)){
				//enable S0
				*cur_DDR &= ~(1 << io_pins[pin].pin); //set DDR "0"
				*cur_PORT |= (1 << io_pins[pin].pin); //enable pullup PORT "1"
				S0_Start(0);
				S0_0 = 1;
				if(get_S0_data(0)%S0_interval == 0){
					save_eeprom(0);
				}
				break;
			}else{
				//INT1
				if((cur_PORT == P_S0_1_PORT) && (cur_DDR == P_S0_1_DDR) && (io_pins[pin].pin == S0_1_PIN)){

					//enable S0
					*cur_DDR &= ~(1 << io_pins[pin].pin); //set DDR "0"
					*cur_PORT |= (1 << io_pins[pin].pin); //enable pullup PORT "1"
					S0_Start(1);
					S0_1 = 1;
					if(get_S0_data(1)%S0_interval == 0){
						save_eeprom(1);
					}
					break;
				}else{
					eeprom_busy_wait ();
					eeprom_write_byte(eeprom_address,PIN_DISABLED);	//write function code to eeprom
				}
			}
			break;
		default:
			*cur_DDR &= ~(1 << io_pins[pin].pin); //disable PIN
			*cur_PORT &= ~(1 << io_pins[pin].pin); //disable PULLUP
			break;
			}
	}

	//S0 deaktivieren
	if(!S0_0){
		S0_Stop(0);
	}

	if(!S0_1){
		S0_Stop(1);
	}

}

void readIOpins(void){
	unsigned char IO_Port;								/* index for txbuffer */
	unsigned short eeprom_address = EEPROM_IO_START;	/* address of I2C-address in eeprom */
	unsigned char func = 0;								/* pin function code */
	unsigned char tmp_PIN = 0x00;						/* buffer for pin status -> port status */

	unsigned char *cur_PIN=0;
	unsigned char *cur_PORT=0;
	unsigned char *cur_DDR=0;

	for (int pin = 0; pin < MAX_IO_PINS; pin++){/* loop over all virtual IO Pins */

		IO_Port = VIRTUAL_IO_START +(pin/8);										/* calc current port rxbuffer address*/

		eeprom_address = EEPROM_IO_START+(sizeof(struct I2C_Slave_IO_PIN)*pin);		/* calc current funtion code eeprom address */
		func = eeprom_read_byte(eeprom_address);									/* read function code from eeprom */

		cur_PIN = io_pins[pin].PPIN;
		cur_PORT = io_pins[pin].PPORT;
		cur_DDR = io_pins[pin].PDDR;


		switch (func) {
			case PIN_DISABLED:
				cbi(tmp_PIN,(pin%8));			/* clear bit in buffer */
				break;
			case PIN_INPUT: /* input pin -> read pin status to buffer */

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {		/* get status of current pin */
					//set "ON"
					sbi(tmp_PIN,pin%8);						/* set bit */
				} else {
					//set "OFF"
					cbi(tmp_PIN,pin%8);						/* clear bit */
				}
				break;
			case PIN_SWITCH: /* switch pin -> read current pin status to buffer */

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {		/* get status of current pin */
					//set "ON"
					cbi(tmp_PIN,pin%8);						/* set bit */
				} else {
					//set "OFF"
					sbi(tmp_PIN,pin%8);						/* clear bit */
				}
				break;
			case PIN_PULSE:
				/* switch pin -> read current pin status to buffer
				 * - same behaviour as switch pin
				 * - even the "short" on pulse can detected by this function
				 * - normally the off state would be detected by this function
				 */

				if ( bis(*cur_PIN,io_pins[pin].pin) ) {		/* get status of current pin */
					//set "ON"
					cbi(tmp_PIN,pin%8);						/* set bit */
				} else {
					//set "OFF"
					sbi(tmp_PIN,pin%8);						/* clear bit */
				}
				break;
			case PIN_S0:
				/*
				 * S0 functionality
				 * - check ddr/port/pin for S0 pin (only interrupt pins possible for this function)
				 * - write current counter value to virtual pin data area of txbuffer
				 */
				if((cur_PORT == P_S0_0_PORT) && (cur_DDR == P_S0_0_DDR) && (io_pins[pin].pin == S0_0_PIN)){
					txbuffer[VIRTUAL_DATA_START+(pin*sizeof(uint32_t))] = get_S0_data(0);
				}
				if((cur_PORT == P_S0_1_PORT) && (cur_DDR == P_S0_1_DDR) && (io_pins[pin].pin == S0_1_PIN)){
					txbuffer[VIRTUAL_DATA_START+(pin*sizeof(uint32_t))] = get_S0_data(1);
				}
				break;

			default:/* default handling */
				sbi(tmp_PIN,(pin%8));		/* set bit */
				break;
		}

		if((pin%8) == 7){/* write last pin values to txbuffer byte */
			cli();										/* disable interrupts */
			txbuffer[VIRTUAL_IO_START]	= tmp_PIN;		/* write port status to txbuffer */
			tmp_PIN = 0x00;								/* reset temporary variable for next pin loops */
			sei();										/* enable interrupts */

		}

	}
	cli();
	txbuffer[VIRTUAL_IO_START+1]	= tmp_PIN;
	tmp_PIN = 0x00;
	sei();
}
