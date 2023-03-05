#include<reg51.h>

void delay_ms(unsigned int x);
void decoder();
void display();


unsigned char donvi,chuc;
unsigned int count,tmp,a;
int dig[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};

void main(void)
{
    while(1)
    {
        for(count = 0;count<100;++count)
        {
			a = count;
            for(tmp = 0; tmp<5000; ++tmp)
            {
                decoder();
                //delay_ms(10);
                display();
            }
        }
    }
}

void delay_ms(unsigned int x)
{
    unsigned int i,j;
    for(i=0;i<x;i++)
    {
        for(j=0;j<100;j++);
    }
}

void decoder()
{
    chuc = a / 10;
    donvi = a % 10;
}


void display()
{
    P0 = dig[chuc];
    P2 = dig[donvi];
}