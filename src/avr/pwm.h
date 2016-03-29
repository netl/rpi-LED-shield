#ifndef PWM_DEFINED
#define PWM_DEFINED

#define PWM_RESOLUTION 0x3f

volatile uint8_t PWMR,PWMG,PWMB;
inline void pwm();
void pwmSetup();

#endif
