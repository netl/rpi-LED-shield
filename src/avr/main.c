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
volatile uint8_t r,g,b,goalR,goalG,goalB;
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
      static uint16_t cnt=0;
      cnt++;
      if(cnt>1000)
      {
         cnt=0;
         if(r<goalR)
            r++;
         else if(r>goalR)
            r--;

         if(g<goalG)
            g++;
         else if(g>goalG)
            g--;

         if(b<goalB)
            b++;
         else if(b>goalB)
            b--;
      }
   }
}

ISR(SPI_STC_vect)
{
   static uint8_t cnt = 0;
   switch(cnt)
   {
      case 0:
         goalR=SPDR;
         break;
      case 1:
         goalG=SPDR;
         break;
      case 2:
         goalB=SPDR;
         break;
   }
   if(cnt==2)
      cnt=0;
   else
      cnt++;
}
