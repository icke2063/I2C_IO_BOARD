/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	main file

 Die Software verhält sich wie ein I2C-EEPROM. Die Adressierung erfolgt im 16bit Modus, da der rx/txbuffer in Kombination mit dem
 internen EEPROM mehr als 256 Adressen einnehmen.

 Die angeforderten Daten werden entweder aus dem txbuffer[] oder dem internen EEPROM gelesen.
 Zu schreibene Daten werden enteder nach rxbuffer[] oder in den internen EEPROM geschrieben. Je nachdem welche Adresse angegeben wird ändert sich die interne
 Speicherzuordnung.

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

#include "IO_handling.h"



//###################### Variablen

struct IO_octet io_pins[MAX_VIRT_IO_PORT] = {
		P_PORT_IO_0,P_PIN_IO_0,P_DDR_IO_0,PIN_IO_0,0,
		P_PORT_IO_1,P_PIN_IO_1,P_DDR_IO_1,PIN_IO_1,0,
		P_PORT_IO_2,P_PIN_IO_2,P_DDR_IO_2,PIN_IO_2,0,
		P_PORT_IO_3,P_PIN_IO_3,P_DDR_IO_3,PIN_IO_3,0,
		P_PORT_IO_4,P_PIN_IO_4,P_DDR_IO_4,PIN_IO_4,0,
		P_PORT_IO_5,P_PIN_IO_5,P_DDR_IO_5,PIN_IO_5,0,
		P_PORT_IO_6,P_PIN_IO_6,P_DDR_IO_6,PIN_IO_6,0,
		P_PORT_IO_7,P_PIN_IO_7,P_DDR_IO_7,PIN_IO_7,0,

		P_PORT_IO_8,P_PIN_IO_8,P_DDR_IO_8,PIN_IO_8,0,
		P_PORT_IO_9,P_PIN_IO_9,P_DDR_IO_9,PIN_IO_9,0,
		P_PORT_IO_A,P_PIN_IO_A,P_DDR_IO_A,PIN_IO_A,0,
		P_PORT_IO_B,P_PIN_IO_B,P_DDR_IO_B,PIN_IO_B,0,
		0,0,0,0,0,
		0,0,0,0,0,
		0,0,0,0,0,
		0,0,0,0,0
		};


//###################### Prototypen
//see main.h

	
int main(void)
{	
unsigned short eeprom_address;
unsigned char IO_Port;


init();


while(1){

	cli();
	for (int pin = 0; pin < MAX_IO_PINS; pin++) {

		IO_Port = VIRTUAL_IO_START + (pin/8);											/* calc position within rxbuffer where the incoming switching instructions stored */

		eeprom_address = EEPROM_IO_START+(sizeof(struct I2C_Slave_IO_PIN)*pin);
		eeprom_busy_wait ();
		io_pins[pin/8].pins[pin%8].function_code = eeprom_read_byte(eeprom_address);	/* read function code from eeprom */

		if((pin%8) == 7){
			handleIOpins(&io_pins[pin/8], rxbuffer[IO_Port]);
			rxbuffer[IO_Port]=0x00;														/* reset buffer */
			//handleIOpins(&io_pins[pin/8], 0x40);
			txbuffer[IO_Port] = readIOpins(&io_pins[pin/8]);
		}
	}
	sei();
	_delay_ms(1000);


	} //end.while
} //end.main


void init(void)
	{
	cli();
	//### TWI
	init_twi_slave(SLAVE_ADRESSE);			//TWI als Slave mit Adresse slaveadr starten
	sei();
	}
