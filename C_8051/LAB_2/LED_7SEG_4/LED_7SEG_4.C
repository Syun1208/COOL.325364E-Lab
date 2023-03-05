#include <reg51.h>

// Code for 7 Segment Display Interfacing with 8051 Microcontroller (AT89S52)

#include<reg51.h>

sbit Port0 = P1 ^ 0;
sbit Port1 = P1 ^ 1;
sbit Port2 = P1 ^ 2;
sbit Port3 = P1 ^ 3;
void msdelay(unsigned int time) // Function for creating delay in milliseconds.

{

  unsigned i, j;

  for (i = 0; i < time; i++)

    for (j = 0; j < 1275; j++);

}

void main()

{

  unsigned char num[] = {
    0xC0,
    0xF9,
    0xA4,
    0xB0,
    0x99,
    0x92,
    0x82,
    0xF8,
    0x80,
    0x90,
    0x88,
    0x80,
    0xC6,
    0xC0,
    0x86,
    0x8E
  }; //Array for hex values (0-9) for common anode 7 segment

  int k;
  int f;
  int j = 1;
  while (1)

  {
		for(f = 0; f < 10; f++){


    for (k = 0; k < 10; k++)

    {
     `P1 = 0xfe;
			P0 = no_code[k];

		msdelay(50);

    }
			Port0 = 0x40;
			Port1= 0x00;
			Port2 = 0x40;
			Port3 = 0x40;
      P0 = no_code[f];

		msdelay(100);

		
}
  }
}