/*
R=PD0
G=PD1
B=PD2
*/

#define PWM_RESOLUTION 0x3f

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/cpufunc.h>
#include "pwm.h"
#include "animations.h"

int main(void)
{
   //setup pwm
   pwmSetup();

   //setup spi communication
   DDRB=(1<<4);
   SPCR = (1<<SPIE)|(1<<SPE);
   
   sei();   //enable interrupts

   while(1)
   {
      pwm();
   }
}

ISR(SPI_STC_vect)
{
   uint8_t mode=(SPDR>>6)&0x3;
   switch(mode)
   {
      case 0:
         PWMR=SPDR&PWM_RESOLUTION;
         break;
      case 1:
         PWMG=SPDR&PWM_RESOLUTION;
         break;
      case 2:
         PWMB=SPDR&PWM_RESOLUTION;
         break;
      case 3:
         break;
   }
}
