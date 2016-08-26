#include <avr/io.h>
#include <stdlib.h>
#include "pwm.h"

//sets the outputs by comparing variables to a running counter
volatile uint8_t PWMA,PWMB,PWMC,PWMD;

inline void pwm()
{
   static uint8_t cnt = 0;
   cnt = (cnt+1)&PWM_RESOLUTION;
   PWM_PORT = ((PWMA<=cnt)<<PWM_N_A)|((PWMB<=cnt)<<PWM_N_B)|((PWMC<=cnt)<<PWM_N_C)|((PWMD<=cnt)<<PWM_N_D);
}

void pwmSetup(void)
{
   //setup outputs
   PWM_DDR |= _BV(PWM_N_A)|_BV(PWM_N_B)|_BV(PWM_N_C)|_BV(PWM_N_D);   //PWM pins as out
}
