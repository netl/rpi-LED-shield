#include <avr/io.h>
#include <stdlib.h>
#include "debug.h"

void debugSetup()
{
   DLED_DDR |= _BV(DLED_N); //set debug led as output 
   DBUTTON_PORT |= _BV(DBUTTON_N); //set pull-up for debug button
}
