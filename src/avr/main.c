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

//sets the outputs by comparing variables to a running counter
volatile uint8_t r=PWM_RESOLUTION/2,g=PWM_RESOLUTION/2,b=PWM_RESOLUTION/2;
inline void pwm()
{
   static uint8_t cnt = 0;
   cnt = (cnt+1)&PWM_RESOLUTION;
   PORTD = (r<cnt)|((g<cnt)<<1)|((b<cnt)<<2);
}

int main(void)
{
   //setup outputs
   DDRD = 0x7;   //RGB as out

   //setup spi communication
   DDRB=(1<<4);
   SPCR = (1<<SPIE)|(1<<SPE);
   SPDR = 42;
   
   sei();   //enable interrupts
   uint8_t i;
   uint32_t j;

   while(1)
   {
      pwm();
   }
}

ISR(SPI_STC_vect)
{
   //r=SPDR&PWM_RESOLUTION;
   //g=(SPDR>>3)&PWM_RESOLUTION;
   //b=(SPDR>>6)&PWM_RESOLUTION;
   uint8_t mode=(SPDR>>6)&0x3;
   static uint8_t cnt = 0;
   switch(mode)
   {
      case 0:
         r=SPDR&PWM_RESOLUTION;
         break;
      case 1:
         g=SPDR&PWM_RESOLUTION;
         break;
      case 2:
         b=SPDR&PWM_RESOLUTION;
         break;
      case 3:
         break;
   }
   if(cnt==2)
      cnt=0;
   else
      cnt++;
}
