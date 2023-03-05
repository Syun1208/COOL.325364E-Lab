#include <AT89X51.h>



void SetupEx0()
{
    EA=0;
    IT0=1;
    EX0=1;
    EA=1;
}

void Ex0Isr()
interrupt 0
{
    P1_0 = !P1_0;
}

int main()
{
    SetupEx0();
    //Ex0Isr();
    while(1);
}