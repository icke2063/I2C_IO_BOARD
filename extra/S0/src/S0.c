/*----------------------------------------------------------------------------
 Copyright:      
 Author:         
 Remarks:        
 known Problems: 
 Version:        
 Description:    

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
#include "S0.h"
#include "S0_config.h"
#include "slave_eeprom_mapping.h"

#include <avr/io.h>
#include <avr/eeprom.h>

ISR(INT0_vect)
{
	CountInt[0]++;
}

ISR(INT1_vect)
{
	CountInt[1]++;
}


//----------------------------------------------------------------------------
//Initialisierung der S0 Interrupteingaengen und PortD Ausgaenge
void S0_Start (uint8_t addr)
{
  S0_DEBUG("S0 Initialisierung\r\n");

  if(addr == 0){
	  if(!(GICR & (1<<INT0))){
		  GICR |= (1<<INT0);   // External Interrupt 0: Enable
		  read_eeprom(0);		//read eeprom counter
	  }
  }


  if(addr == 1){
 	  if(!(GICR & (1<<INT1))){
 		  GICR |= (1<<INT1);   // External Interrupt 1: Enable
 		  read_eeprom(1);
 	  }
   }

  MCUCR |= (1<<ISC01)|(1<<ISC00)|(1<<ISC11)|(1<<ISC10);   // Int0/Int1 auf steigende Flanke
}


void S0_Stop (uint8_t addr)
{

  if(addr == 0){
	  if(GICR & (1<<INT0)){
		  //Interrupt aktiv -> deaktivieren
		  GICR &= ~(1<<INT0);   // External Interrupt 0: Disable
		  save_eeprom(0);
	  }
  }
  
  if(addr == 1){
 	  if(GICR & (1<<INT1)){
 		 GICR |= (1<<INT1);   // External Interrupt 0 Enable
 		 save_eeprom(1);
 	  }
   }
}


//----------------------------------------------------------------------------
//Auslesen der im eeprom gespeicherten Z�hlerst�nde
void read_eeprom (uint8_t addr)
{
  uint32_t hilf;
  uint16_t S0_address = 0;
  
  if(addr == 0)S0_address = EEPROM_S0_0_STORE;
  if(addr == 1)S0_address = EEPROM_S0_1_STORE;
  
  if(S0_address == 0)return;
  
  S0_DEBUG("EEPROM Read address:%i\r\n",S0_address);

  
  // Counter aus Speicher auslesen
  eeprom_busy_wait ();
  eeprom_read_block(&hilf,(unsigned char *)S0_address,sizeof(uint32_t));
  
  CountInt[addr]=hilf;
  
  if(CountInt[addr]==0xFFFFFFFF)CountInt[addr]=0;
}

void save_eeprom (uint8_t addr)
{
  uint32_t hilf;
  uint16_t S0_address = 0;

  if(addr == 0)S0_address = EEPROM_S0_0_STORE;
  if(addr == 1)S0_address = EEPROM_S0_1_STORE;
  
  if(S0_address == 0)return;
  S0_DEBUG("EEPROM write address:%i\r\n",S0_address);
  
  // Counter in den EEPROM schreiben
  eeprom_busy_wait ();
  eeprom_write_block((unsigned char *)CountInt[addr],(unsigned char *)S0_address,sizeof(uint32_t));
}


//----------------------------------------------------------------------------
uint32_t get_S0_data (uint8_t p)
{
    uint8_t sreg_tmp;
    uint32_t hilf;
    sreg_tmp = SREG;    /* Sichern */
    cli();
    
    if(p>=0 && p<=1)
    {
     // usart_write ("%i\r\n",CountInt[p]);
      hilf=CountInt[p];
      SREG = sreg_tmp;    /* Wiederherstellen */
      return hilf;
    }
    
    SREG = sreg_tmp;    /* Wiederherstellen */
    
}

//----------------------------------------------------------------------------
