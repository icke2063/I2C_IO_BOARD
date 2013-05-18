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
 Zu schreibende Daten werden entweder nach rxbuffer[] oder in den internen EEPROM geschrieben. Je nachdem welche Adresse angegeben wird ändert sich die interne
 Speicherzuordnung.

 Die Aufteilung des Speichers ist slave_eeprom_mapping.h zu entnehmen.
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
#include <string.h>

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

#include "git-version.h"



//###################### Variablen

struct virtual_IO_port io_pins[GET_VIRT_PORT_COUNT(COUNT_IO_PINS)] = {
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,

		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,



		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,

		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		&PORTB,&PINB,&DDRB,0,0,
		};


//###################### Prototypen
//see main.h

int main(void) {

	usart_init(BAUDRATE);

	usart_write("\n\rSystem Ready\n\r");
	usart_write("Compiliert am "__DATE__" um "__TIME__"\r\n");
	usart_write("Compiliert mit GCC Version "__VERSION__"\r\n");

	init();
	printIOsstruct();


	while (1) {
		handle_vio();
		_delay_ms(1000);
	} //end.while

	while(1);;
} //end.main

void init(void) {

	unsigned char I2C_addi = eeprom_read_byte(0);

	usart_write("I2C_address:0x%x\r\n", I2C_addi);

	/* set Slave ID */
	txbuffer[0] = SLAVE_ID;

	/* set IO Pin count */
	txbuffer[VIRTUAL_IO_START] = COUNT_IO_PINS;

	/* copy git version into txbuffer */
	strncpy(&txbuffer[VERSION_START], VINFO_GITDESC, VERSION_LENGTH);

	cli();
	//### TWI
	init_twi_slave(I2C_addi < 128 ? I2C_addi : 0x51); //TWI als Slave mit Adresse slaveadr starten

	sei();
	//enable interrupts
	usart_write("init_done\r\n");

}

void printIOsstruct(void){
	unsigned char pin_num;
	usart_write("PortCount:%i\r\n",GET_VIRT_PORT_COUNT(COUNT_IO_PINS));
	for (pin_num = 0; pin_num < COUNT_IO_PINS; pin_num++) {

		usart_write("VIO[0x%x]:",pin_num);
		usart_write("pPort:0x%x",io_pins[pin_num/8].pins[pin_num%8].PPORT);
		usart_write(";pDDR:0x%x",io_pins[pin_num/8].pins[pin_num%8].PDDR);
		usart_write(";pPin:%i",io_pins[pin_num/8].pins[pin_num%8].PPIN);
		usart_write(";pin:%i\r\n",io_pins[pin_num/8].pins[pin_num%8].pin);
	}
}

void handle_vio(void) {
	unsigned short eeprom_address;
	unsigned char IO_Port_address;
	unsigned char pin_num = 0;
	unsigned char port_num = 0;

	cli();	// disable interrupts
	for (pin_num = 0; pin_num < COUNT_IO_PINS; pin_num++) {
		/* get function codes */
		eeprom_address = EEPROM_FUNC_START + pin_num; /* calc position within eeprom */

		eeprom_busy_wait();
		io_pins[pin_num / 8].pins[pin_num % 8].function_code = eeprom_read_byte(
				eeprom_address); /* read function code from eeprom */
	}

	for(port_num = 0;port_num<GET_VIRT_PORT_COUNT(COUNT_IO_PINS);port_num++)
	{
		IO_Port_address = VIRTUAL_IO_START + port_num + 1;
		handleIOport(&io_pins[port_num], rxbuffer[IO_Port_address]);
		rxbuffer[IO_Port_address] = 0x00; /* reset buffer */
		txbuffer[IO_Port_address] = readvirtIOport(&(io_pins[port_num]));
		I2C_MAIN_DEBUG("IOPort[0x%x]:0x%x\r\n", IO_Port_address,txbuffer[IO_Port_address]);
	}
	sei();
}
