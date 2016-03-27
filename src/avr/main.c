/*
R=PD0
G=PD1
B=PD2

RGBdata is given in one byte via SPI
0bRRRGGGBBB
*/

#define PWM_RESOLUTION 0x7 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/cpufunc.h>

//sets the outputs by comparing variables to a running counter
volatile uint8_t r=PWM_RESOLUTION/2,g=PWM_RESOLUTION/2,b=PWM_RESOLUTION/2;
void pwm()
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
   for(i = 0; i<PWM_RESOLUTION; i++)
   {
      r=i;
      g=8-i;
      for(j = 0; j<10000; j++)
         pwm();
   }
   r=0;
   g=0;
   b=0;

   while(1)
   {
      pwm();
   }
}

ISR(SPI_STC_vect)
{
   r=SPDR&PWM_RESOLUTION;
   g=(SPDR>>3)&PWM_RESOLUTION;
   b=(SPDR>>6)&PWM_RESOLUTION;
   /*static uint8_t cnt = 0;
   switch(cnt)
   {
      case 0:
         r=SPDR;
         break;
      case 1:
         g=SPDR;
         break;
      case 2:
         b=SPDR;
         break;
   }
   if(cnt==2)
      cnt=0;
   else
      cnt++;*/
}
