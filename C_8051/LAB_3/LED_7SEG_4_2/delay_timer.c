#include<at89x51.h>

void delay_hardware_50ms()
{
    TMOD=TMOD & 0xF0;
    TMOD=TMOD | 0x01;
    ET0=0;
    TH0=0x3C;
    TL0=0xB0;
    TF0=0;
    TR0=1;
    while(TF0==0);
    TR0=0;
}

void delay_hardward_1s()
{
    int i;
    for(i=0;i<100;i++)
    {
        delay_hardware_50ms();
    }
}

int main()
{
    while(1)
    {
        P1=0xAA;
        delay_hardward_1s();
        P1=0x55;
        delay_hardware_1s();
    }
}