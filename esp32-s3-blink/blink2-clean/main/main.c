
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "led.h"

void led_blink_task(void * param)
{
  
    while(1)
    {
    led_on();
    vTaskDelay(pdMS_TO_TICKS(500));
    led_off();
    vTaskDelay(pdMS_TO_TICKS(500));
    }
}
 
 
void app_main(void)
{
  led_init();
 xTaskCreatePinnedToCore(led_blink_task,"led",4096,NULL,3,NULL,1);

}





