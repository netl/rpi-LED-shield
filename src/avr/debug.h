#ifndef DEBUG_DEFINED
#define DEBUG_DEFINED

#define DLED_N 5
#define DLED_DDR DDRD
#define DLED_PORT PORTD

#define DBUTTON_N 0
#define DBUTTON_DDR DDRB
#define DBUTTON_PORT PORTB
#define DBUTTON_PIN PINB

#define DLED_ON DLED_PORT |= _BV(DLED_N);
#define DLED_OFF DLED_PORT &= ~_BV(DLED_N);
#define DLED_TOGGLE DLED_PORT ^= _BV(DLED_N); 

#define DBUTTON (DBUTTON_PIN & _BV(DBUTTON_N))>>DBUTTON_N

void debugSetup();

#endif
