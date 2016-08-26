#ifndef ANIMATIONS_INCLUDED
#define ANIMATIONS_INCLUDED

//animation parameters
#define ANIMATION_COMPLETE 1  //animation is completed and can be called again

//animation names
#define ANIM_NOANIM 0
#define ANIM_FLASH 1
#define ANIM_RANDOMIZE 2
#define ANIM_FADEOUT 3
#define ANIM_DIMM 4

uint8_t animate(uint8_t anim, volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);

inline uint8_t anim_flash(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);
inline uint8_t anim_randomize(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);
inline uint8_t anim_fadeOut(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);
inline uint8_t anim_dimm(volatile uint8_t *r, volatile uint8_t *g, volatile uint8_t *b);

#endif
