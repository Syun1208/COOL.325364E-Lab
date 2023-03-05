#include <reg51.h>
#include <stdio.h>

sbit LED0 = P0^0;
sbit LED1 = P0^1;
sbit LED2 = P0^2;
sbit LED3 = P0^3;
sbit LED4 = P0^4;
sbit LED5 = P0^5;
sbit LED6 = P0^6;
sbit LED7 = P0^7;


void delay_ms(unsigned int time)
{
    unsigned int i,j;
    for(i=0;i<time;i++)
    {
        for(j=0;j<100;j++);
    }
}

void shift_bit(unsigned int number){
	switch (number)
    {
    case 0:
        LED0 = 1;
        LED1 = LED2 = LED3 = LED4 = LED5 = LED6 = LED7 = 0;
        break;
    case 1:
        LED1 = 1;
        LED0 = LED2 = LED3 = LED4 = LED5 = LED6 = LED7 = 0;
		break;
    case 2:
        LED2 = 1;
        LED0 = LED1 = LED3 = LED4 = LED5 = LED6 = LED7 = 0;
        break;
    case 3:
        LED3 = 1;
        LED0 = LED2 = LED1 = LED4 = LED5 = LED6 = LED7 = 0;
        break;
    case 4:
        LED4 = 1;
        LED0 = LED2 = LED3 = LED1 = LED5 = LED6 = LED7 = 0;
        break;
    case 5:
        LED5 = 1;
        LED0 = LED2 = LED3 = LED1 = LED4 = LED6 = LED7 = 0;
        break;
    case 6:
        LED6 = 1;
        LED0 = LED2 = LED3 = LED1 = LED5 = LED4 = LED7 = 0;
        break;
    case 7:
        LED7 = 1;
        LED0 = LED2 = LED3 = LED1 = LED5 = LED6 = LED4 = 0;
        break;
    default:
        break;
    }
}
int main()
{
	unsigned int number;
    while (1)
    {	
        for(number = 0; number < 9; ++number)
        {
            shift_bit(number);
            delay_ms(500);
        }
    }
	return 0;
}
