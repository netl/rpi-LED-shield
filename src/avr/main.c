/*
R=PD0
G=PD1
B=PD2
*/

#define PWM_RESOLUTION 0x3f
#define F_CPU 1000000
#define ANIM_FRAMERATE 20

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/cpufunc.h>
#include "pwm.h"
#include "animations.h"
#include "debug.h"

int main(void)
{
   //setup debug
   debugSetup();

   //setup pwm
   pwmSetup();

   //setup spi communication
   DDRB=(1<<4);
   SPCR = (1<<SPIE)|(1<<SPE);

   //setup interrupts for animations
   TCCR0A = (1<<WGM01);
   TCCR0B = (1<<CS00)|(1<<CS02);
   TIMSK0 = (1<<OCIE0A);
   OCR0A = F_CPU/1024/ANIM_FRAMERATE; //set interrupt interval
   
   sei();   //enable interrupts

   while(1)
   {
      pwm();
      if(!DBUTTON)
         DLED_ON
      else
         DLED_OFF
   }
}

volatile uint8_t anim = ANIM_NOANIM;
ISR(TIMER0_COMPA_vect)
{
   if(anim != ANIM_NOANIM)
      if(animate(anim, &PWMR, &PWMG, &PWMB) == ANIMATION_COMPLETE)
         anim = ANIM_NOANIM;
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
         anim=SPDR&PWM_RESOLUTION;
         break;
   }
}
