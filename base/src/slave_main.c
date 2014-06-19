/********************************************************************************
 Copyright:	icke2063 mailto: icke2063@gmail.com
 @author:	icke2063
 Remarks:
 known Problems: none
 @date:		03.10.2012
 Description:	main file

 Die Software verhält sich wie ein I2C-EEPROM. Die Adressierung erfolgt im 16bit Modus, da der rx/txbuffer in Kombination mit dem
 internen EEPROM mehr als 256 Adressen einnehmen. Die unteren 256 Bytes können auch im 8bit Modus gelesen werden.

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
#define F_CPU 1000000UL	//1Mhz internal oszi
#endif

//std lib
#include <stdlib.h>
#include <string.h>

//std avr
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <avr/wdt.h>


//jtronics
#include "twislave.h"

//ulrich radig
#include "usart.h"
#include "timer.h"

//icke2063
#include <slave_main.h>

#include <default_iopin.h>
#include <slave_config.h>
#include <slave_eeprom_mapping.h>

//common_AVR
#include "IO_handling.h"


#ifdef USE_OW
	#include "1-wire_config.h"
	#include <ds18x20.h>
	#include <onewire.h>
#endif

#include "git-version.h"

//###################### Variablen

unsigned char hh;
unsigned char mm;
unsigned char ss;

//Evaluation Board
//struct virtual_IO_port io_pins[GET_VIRT_PORT_COUNT(COUNT_IO_PINS)] = {
//		&PORTD,	&PIND, &DDRD, 5, 0, /* IO00 */
//		&PORTD, &PIND, &DDRD, 6, 0, /* IO01 C3*/
//		&PORTD, &PIND, &DDRD, 4, 0, /* IO02 */
//		&PORTD, &PIND, &DDRD, 3, 0, /* IO03 */
//		&PORTD, &PIND, &DDRD, 2, 0, /* IO04 */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO05 */
//
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO06 */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO07 */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO08 */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO09 */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO0A */
//		&PORTD, &PIND, &DDRD, 0, 0, /* IO0B */
//		0, 0, 0, 0, 0, /* IO0C */
//		0, 0, 0, 0, 0, /* IO0D */
//
//		0, 0, 0, 0, 0, /* IO0E */
//		0, 0, 0, 0, 0, /* IO0F */
//};

//configured port pins (by slave_config.h)
struct virtual_IO_port io_pins[GET_VIRT_PORT_COUNT(COUNT_IO_PINS)] = {
		VIO_PORT_0, VIO_PIN_0, VIO_DDR_0, VIO_PINNR_0, 0,
		VIO_PORT_1, VIO_PIN_1, VIO_DDR_1, VIO_PINNR_1, 0,
		VIO_PORT_2, VIO_PIN_2, VIO_DDR_2, VIO_PINNR_2, 0,
		VIO_PORT_3, VIO_PIN_3, VIO_DDR_3, VIO_PINNR_3, 0,
		VIO_PORT_4, VIO_PIN_4, VIO_DDR_4, VIO_PINNR_4, 0,
		VIO_PORT_5, VIO_PIN_5, VIO_DDR_5, VIO_PINNR_5, 0,
		VIO_PORT_6, VIO_PIN_6, VIO_DDR_6, VIO_PINNR_6, 0,
		VIO_PORT_7, VIO_PIN_7, VIO_DDR_7, VIO_PINNR_7, 0,

		VIO_PORT_8, VIO_PIN_8, VIO_DDR_8, VIO_PINNR_8, 0,
		VIO_PORT_9, VIO_PIN_9, VIO_DDR_9, VIO_PINNR_9, 0,
		VIO_PORT_A, VIO_PIN_A, VIO_DDR_A, VIO_PINNR_A, 0,
		VIO_PORT_B, VIO_PIN_B, VIO_DDR_B, VIO_PINNR_B, 0,
		VIO_PORT_C, VIO_PIN_C, VIO_DDR_C, VIO_PINNR_C, 0,
		VIO_PORT_D, VIO_PIN_D, VIO_DDR_D, VIO_PINNR_D, 0,
		VIO_PORT_E, VIO_PIN_E, VIO_DDR_E, VIO_PINNR_E, 0,
		VIO_PORT_F, VIO_PIN_F, VIO_DDR_F, VIO_PINNR_F, 0,
};

struct IO_pin uart_tx = {UARTTX_PORT, UARTTX_PIN, UARTTX_DDR, UARTTX_PINNR, 0,};


ISR(__vector_default){usart_write("ISR\n\r");}

//###################### Prototypen
//see main.h

int main(void) {
	timer_init();

	usart_init(BAUDRATE);

	/**
	 * get function codes of all configured pins
	 * - disable uart if pin is used
	 */
	getFuncCode();

	usart_write("\n\rSystem_Ready\n\r");
	usart_write("Compiliert_am_"__DATE__"_um_"__TIME__"\r\n");
	usart_write("Compiliert_mit_GCC_Version_"__VERSION__"\r\n");

	init();
	printIOsstruct();

	while (1) {
		// RoBue:
		// Uhrzeit bestimmen
		hh = (time/3600)%24;
		mm = (time/60)%60;
		ss = time%60;


		//get new pulse time from eeprom
		pulse_time = eeprom_read_byte(EEPROM_PULSE_TIME) << 8;
		pulse_time |= eeprom_read_byte(EEPROM_PULSE_TIME+1);

		update_tx();
		handle_vio();
		_delay_ms(1000);
	} //end.while

	while (1)
		;;
} //end.main

void init(void) {
	unsigned char port_num = 0;

	getFuncCode();	//read function codes from eeprom
	for (port_num = 0; port_num < GET_VIRT_PORT_COUNT(COUNT_IO_PINS);
			port_num++) {
		initIOport(&(io_pins[port_num]));	//first pin initialisation (all configured pins)
	}

	/* set Slave ID */
	txbuffer[0] = SLAVE_ID;
	txbuffer[1] = SLAVE_ID;

	/* copy git version into txbuffer */
	strncpy(&txbuffer[VERSION_START], VINFO_GITDESC, VERSION_LENGTH);
	txbuffer[VERSION_START + VERSION_LENGTH] = '\0';
	usart_write("version[%i;%i]\r\n",
			VERSION_START, VERSION_START+VERSION_LENGTH);
	usart_write("version:%s\r\n", &txbuffer[VERSION_START]);

	/* set IO Pin count */
	txbuffer[VIRTUAL_IO_COUNT] = COUNT_IO_PINS;
	txbuffer[VIRTUAL_IO_COUNT + 1] = COUNT_IO_PINS;

	//### TWI
	unsigned char I2C_addi = eeprom_read_byte(0);
	I2C_addi = I2C_addi < 128 ? I2C_addi : 0x42;
	init_twi_slave(I2C_addi); //TWI als Slave mit Adresse slaveadr starten
	usart_write("I2C_address:0x%x\r\n", I2C_addi);

	usart_write("init_done\r\n");
}

void printIOsstruct(void) {//deprecated: done by initIOPort
	unsigned char pin_num;
	usart_write("PortCount:%i\r\n", GET_VIRT_PORT_COUNT(COUNT_IO_PINS));
	for (pin_num = 0; pin_num < COUNT_IO_PINS; pin_num++) {
		usart_write("VIO[0x%x]:", pin_num);
		usart_write("pPort:0x%x", io_pins[pin_num/8].pins[pin_num%8].PPORT);
		usart_write(";pDDR:0x%x", io_pins[pin_num/8].pins[pin_num%8].PDDR);
		usart_write(";pPin:%i", io_pins[pin_num/8].pins[pin_num%8].PPIN);
		usart_write(";pin:%i", io_pins[pin_num/8].pins[pin_num%8].pin);
		usart_write(";func[0x%x]:%i\r\n",EEPROM_FUNC_START + (pin_num * 2) + 1, io_pins[pin_num/8].pins[pin_num%8].function_code);
	}
}

void getFuncCode(void) {
	unsigned char pin_num = 0;
	unsigned short eeprom_address;
	for (pin_num = 0; pin_num < COUNT_IO_PINS; pin_num++) {
		/* get function codes */
		eeprom_address = EEPROM_FUNC_START + (pin_num * 2) + 1; /* calc position within eeprom */
		eeprom_busy_wait();

		io_pins[pin_num / 8].pins[pin_num % 8].function_code = eeprom_read_byte(eeprom_address); /* read function code from eeprom */

		//check for uart pin
		if(io_pins[pin_num / 8].pins[pin_num % 8].PPORT == uart_tx.PPORT
				&& io_pins[pin_num / 8].pins[pin_num % 8].pin == uart_tx.pin){
			//found uart_tx pin
			if(io_pins[pin_num / 8].pins[pin_num % 8].function_code != PIN_DISABLED){
				usart_status.usart_disable = 1;	//disable uart output
			} else {
				usart_status.usart_disable = 0;	//enable uart output
			}
		}
	}
}

void update_tx(void){
	txbuffer[EEPROM_WRITE_ENABLE] = rxbuffer[EEPROM_WRITE_ENABLE];
	txbuffer[EEPROM_WRITE_ENABLE+1] = rxbuffer[EEPROM_WRITE_ENABLE+1];
}

void handle_vio(void) {
	unsigned char IO_Port_address;
	unsigned char port_num = 0;
	static uint8_t seqnr = 0;

    uint8_t sreg_local; // Lokale Sicherungskopie von SREG
    sreg_local = SREG;
    cli();
	// disable interrupts
	getFuncCode();

	for (port_num = 0; port_num < GET_VIRT_PORT_COUNT(COUNT_IO_PINS);
			port_num++) {
		IO_Port_address = VIRTUAL_IO_START + (port_num * 2); //virtual port address (+1 -> mask address)

		if (rxbuffer[IO_Port_address + 1]) {
			I2C_MAIN_DEBUG("IO[0x%x]:0x%x:0x%x\r\n", IO_Port_address,rxbuffer[IO_Port_address],rxbuffer[IO_Port_address+1]);
			handleIOport(&io_pins[port_num], rxbuffer[IO_Port_address],
					rxbuffer[IO_Port_address + 1]);
			rxbuffer[IO_Port_address] = 0x00; /* reset vport */
			rxbuffer[IO_Port_address + 1] = 0x00; /* reset mask */
		}

		txbuffer[IO_Port_address] = readvirtIOport(&(io_pins[port_num]), port_num);
		I2C_MAIN_DEBUG("%x_IO[0x%x]:0x%x\r\n",seqnr++, IO_Port_address,txbuffer[IO_Port_address]);
	}
	SREG = sreg_local;
}


#ifdef USE_OW
void set1WirePin(struct IO_pin *vpin, uint8_t power_mode){
#ifndef OW_ONE_BUS
	ow_set_bus(vpin->PPIN, vpin->PPORT, vpin->PDDR, vpin->pin);
#endif
	DS18X20_start_meas( power_mode, NULL );
}

void read1WirePin(struct IO_pin *vpin, uint8_t port_num, uint8_t pin_num, uint8_t power_mode){

	uint16_t result;
	uint8_t subzero, cel, cel_frac_bits;
	uint8_t *tempID = rxbuffer[VIRTUAL_DATA_START + (port_num * IOBOARD_MAX_IO_PINS) + pin_num];

#ifndef OW_ONE_BUS
	ow_set_bus(vpin->PPIN, vpin->PPORT, vpin->PDDR, vpin->pin);
#endif

	if ( ss%10 == 5 ) {
		//I2C_MAIN_DEBUG("st OW\r\n");
		DS18X20_start_meas( power_mode, NULL );
	}

	if (ss % 10 == 8) {

		//I2C_MAIN_DEBUG("rd OW\r\n");

		if (DS18X20_read_meas(tempID, &subzero, &cel, &cel_frac_bits) == DS18X20_OK) {

			result = DS18X20_temp_to_decicel(subzero, cel, cel_frac_bits);

			// Minuswerte:
			if (subzero)
				result *= (-1);

			usart_write("T:%i\r\n", result);

			txbuffer[VIRTUAL_DATA_START + (port_num * IOBOARD_MAX_IO_PINS) + pin_num] = result >> 8;
			txbuffer[VIRTUAL_DATA_START + (port_num * IOBOARD_MAX_IO_PINS) + pin_num +1] = result & 0xFF;

		} // -> if
	}
}

#endif
