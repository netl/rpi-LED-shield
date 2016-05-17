#ifndef PWM_DEFINED
#define PWM_DEFINED

#define PWM_PORT PORTC
#define PWM_DDR DDRC
#define PWM_N_A 0
#define PWM_N_B 1
#define PWM_N_C 2
#define PWM_N_D 3

#define PWM_RESOLUTION 0x3f

volatile uint8_t PWMA,PWMB,PWMC,PWMD;
inline void pwm();
void pwmSetup();

#endif
