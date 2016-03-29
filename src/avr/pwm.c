#include <avr/io.h>
#include <stdlib.h>
#include "pwm.h"

//sets the outputs by comparing variables to a running counter
volatile uint8_t PWMR=PWM_RESOLUTION,PWMG=PWM_RESOLUTION,PWMB=PWM_RESOLUTION;

inline void pwm()
{
   static uint8_t cnt = 0;
   cnt = (cnt+1)&PWM_RESOLUTION;
   PORTD = (PWMR<cnt)|((PWMG<cnt)<<1)|((PWMB<cnt)<<2);
}

void pwmSetup(void)
{
   //setup outputs
   DDRD |= 0x7;   //RGB as out
}
