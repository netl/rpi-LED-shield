/*
R=PD0
G=PD1
B=PD2
*/

#define PWM_RESOLUTION 0xff

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdlib.h>

//sets the outputs by comparing variables to a running counter
volatile uint8_t r=0,g=0,b=0;
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

   while(1)
   {
      pwm();
   }
}

ISR(SPI_STC_vect)
{
   static uint8_t cnt = 0;
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
      cnt++;
}
