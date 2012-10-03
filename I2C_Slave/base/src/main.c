/*----------------------------------------------------------------------------
 Copyright:      icke2063  mailto: icke2063@gmail.com
 Author:         icke2063
 Remarks:        
 known Problems: none
 Version:        01.10.2012
 Description:    I2C(TWI) IO Board

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
 ----------------------------------------------------------------------------*/

#include <config.h>
#include <eeprom_mapping.h>
#include <main.h>

unsigned char hh;
unsigned char mm;
unsigned char ss;

unsigned char DDR_PORTB = 0;
unsigned char DDR_PORTC = 0;
unsigned char DDR_PORTD = 0;

//----------------------------------------------------------------------------
// Hier startet das Hauptprogramm
// ******************************

int main(void) {

	unsigned char func = 0;

	DDRD = OUTD;
	//	PORTD = ~OUTD;


	unsigned char tmp;

	//	tmp = eeprom_read_byte(0);

	eeprom_write_byte(EEPROM_FUNC_PD_5,PIN_PULSE);

	while (1) {

		handlePort(&DDRD, &PORTD, EEPROM_FUNC_PORTD, 0x60, EEPROM_MASK_PORTD);
_delay_ms(1000);
		//
		//		//2.Wechsel
		//		if(PIND & (1<<i))	//PIN == 1
		//		{
		//			HTTP_DEBUG("2.Eins->Null(%i)\r\n",i);
		//			PORTD = PORTD &= ~(1<<i);
		//		}
		//		else				//PIN == 0
		//		{
		//			HTTP_DEBUG("2.Null->Eins(%i)\r\n",i);
		//			PORTD = PORTD |= (1<<i) ;
		//		}
		//

	}
	return (0);
}

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
