#ifndef ANIMATIONS_INCLUDED
#define ANIMATIONS_INCLUDED

//animation parameters
#define ANIMATION_COMPLETE 1  //animation is completed and can be called again

//animation names
#define ANIM_NOANIM 0
#define ANIM_FLASH 1

uint8_t animate(uint8_t anim, volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);

inline uint8_t anim_flash(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);

#endif
