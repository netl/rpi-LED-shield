#include <avr/io.h>
#include <stdlib.h>
#include "pwm.h"
#include "animations.h"

uint8_t animate(uint8_t anim, volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b)
{
   switch(anim)
   {
      case(ANIM_FLASH):
         if(anim_flash(r, g, b))
            return ANIMATION_COMPLETE;
         break;
   }
}

inline uint8_t anim_flash(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b)
{
   static uint8_t framesRemaining = 10;
   if(framesRemaining)
   {
      if(framesRemaining==10)
      {
         *r=PWM_RESOLUTION;
         *g=PWM_RESOLUTION;
         *b=PWM_RESOLUTION;
      }
      else if(framesRemaining==9)
      {
         *r=0;
         *g=0;
         *b=0;
      }
      framesRemaining --;
   }
   else
   {
      framesRemaining = 10;
      return ANIMATION_COMPLETE;
   }
   return 0;
}
