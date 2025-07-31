

// __LED_H is a header guard (also called an include guard) identifier used to prevent multiple inclusions of the same header file.

#ifndef __LED_H
#define __LED_H
 
#include "driver/gpio.h"
#define LED_PIN 43
 
void led_init(void);
void led_on(void);
void led_off(void);

#endif
