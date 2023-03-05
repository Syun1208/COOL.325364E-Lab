#include <reg51.h>


int dig[]={0x0,0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9};

void delay_ms(unsigned int x)
{
    unsigned int i,j;
    for(i=0;i<x;i++)
    {
        for(j=0;j<100;j++);
    }
}

int main()
{
		int count = 0;
    for(count = 0; count < 10; count++)
    {
        P2 = dig[count];
				delay_ms(1000);
    }
}