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


void DELAY_ms(unsigned int ms_Count)
{	
    unsigned int i,j;
    for(i=0;i<ms_Count;i++)
    {
        for(j=0;j<100;j++);
    }
}

int main() 
{
    while(1)
    {
        //P0 = 0xff; /* Turn ON all the leds connected to Ports */
        //P1 = 0xff;
        //P2 = 0xff;
        //P3 = 0xff;
        //DELAY_ms(500);
        
        //P0 = 0x00; /* Turn OFF all the leds connected to Ports */
        //P1 = 0x00;
        //P2 = 0x00;
        //P3 = 0x00;
        //DELAY_ms(500);
				LED0 = 1;
				LED1 = 0;
				LED2 = 1;
				LED3 = 0;
				LED4 = 1;
				LED5 = 0;
				LED6 = 1;
				LED7 = 0;
				DELAY_ms(500);
				LED0 = 0;
				LED1 = 1;
				LED2 = 0;
				LED3 = 1;
				LED4 = 0;
				LED5 = 1;
				LED6 = 0;
				LED7 = 1;
				DELAY_ms(500);
    }

    return (0);
}