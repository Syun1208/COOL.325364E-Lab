#include <at89x51.h>

#define ale P3_6
#define a P3_2
#define b P3_3

#define oe P3_7
#define eoc P3_4
#define start P3_5
unsigned int rdata;
int digi[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99,
              0x92, 0x82, 0xF8, 0x80, 0x90};
int chon;
int index;
int DEM = 0;
void display(int sec_dis, int number);
void set_timer1();

void minimnal_delay()
{
    int i;
    for (i = 0; i < 255; i++)
    {
    }
}

void set_timer1()
{
    TMOD = 0x10;
    ET1 = 0;
    TH1 = 0x3C;
    TL1 = 0xAF;
    TF1 = 0;
    TR1 = 1;
    IE = 0x88;
}

void dem_counter() interrupt 4 using 1
{
    if (RI)
    {
        rdata = SBUF;
        RI = 0;
        switch (rdata)
        {
        case ('0'):
        {
            index = 0;
            break;
        }
        case ('1'):
        {
            index = 1;
            break;
        }
        case ('2'):
        {
            index = 2;
            break;
        }
        case ('3'):
        {
            index = 3;
            break;
        }
        }
    }
}

void select_sensor(int x)
{
    switch (x)
    {
    case 0:
    {
        a = 0;
        b = 0;
    }
    break;
    case 1:
    {
        a = 1;
        b = 0;
    }
    break;
    case 2:
    {
        a = 0;
        b = 1;
    }
    break;
    case 3:
    {
        a = 1;
        b = 1;
    }
    break;
    default:
    {
        a = 0;
        b = 0;
    }
    }
}

void setup()
{
    TMOD = 0x20;
    TH1 = -3;
    SCON = 0x50;
    TR1 = 1;
    IE = 0x90;
}

void display(int sec_dis, int number)
{
    P2_2 = 0;
    P2_0 = 1;
    P0 = digi[sec_dis];

    minimnal_delay();
    minimnal_delay();
    P2_0 = 0;
    P2_1 = 1;
    P0 = digi[number / 10];
    number = number % 10;
    minimnal_delay();
    minimnal_delay();
    P2_1 = 0;
    P2_2 = 1;
    P0 = digi[number];
    minimnal_delay();
    minimnal_delay();
}
int main()
{
    set_timer1();
    index = 0;
    setup();
    while (1)
    {
        oe = 0;
        ale = 0;
        start = 0;
        select_sensor(index);
        minimnal_delay();
        oe = 1;
        ale = 1;
        start = 1;
        minimnal_delay();
        start = 0;
        ale = 0;
        minimnal_delay();
        display(index, P1);
        SBUF = index;
        while (TI == 0)
            ;
        TI = 0;
        SBUF = P1;
        while (TI == 0)
            ;
        TI = 0;
        if (index == 5)
        {
            index = 1;
        }
    }
}