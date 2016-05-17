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
      case(ANIM_RANDOMIZE):
         if(anim_randomize(r, g, b))
            return ANIMATION_COMPLETE;
         break;
      case(ANIM_FADEOUT):
         if(anim_fadeOut(r, g, b))
            return ANIMATION_COMPLETE;
         break;
   }
}

inline uint8_t anim_flash(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b)
{
   static uint8_t framesRemaining = 1;
   if(framesRemaining)
   {
      *r=PWM_RESOLUTION;
      *g=PWM_RESOLUTION;
      *b=PWM_RESOLUTION;
      framesRemaining --;
   }
   else
   {
      *r=0;
      *g=0;
      *b=0;
      framesRemaining = 1;
      return ANIMATION_COMPLETE;
   }
   return 0;
}

inline uint8_t anim_randomize(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b)
{
   *r = rand()%PWM_RESOLUTION;
   *g = rand()%PWM_RESOLUTION;
   *b = rand()%PWM_RESOLUTION;
   return ANIMATION_COMPLETE;
}

inline uint8_t anim_fadeOut(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b)
{
   if(*r == 0 && *g == 0 && *b == 0)
      return ANIMATION_COMPLETE;
   else
   {
      if(*r>0)
         *r -=1;
      if(*g>0)
         *g -=1;
      if(*b>0)
         *b -=1;
      return 0;
   }
}
