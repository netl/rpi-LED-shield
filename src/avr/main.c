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
volatile uint8_t r,g,b;
void pwm()
{
   static uint8_t cnt = 0;
   cnt = (cnt+1)&PWM_RESOLUTION;
   PORTD = (r>cnt)|((g>cnt)<<1)|((b>cnt)<<2);
}

int main(void)
{
   //setup outputs
   DDRD = 0x7;   //RGB as out

   //setup spi communication
   
   sei();   //enable interrupts

   g=PWM_RESOLUTION;
   while(1)
   {
      pwm();
   }
}
