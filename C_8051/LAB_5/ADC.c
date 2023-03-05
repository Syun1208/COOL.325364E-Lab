#include <regx51.h>
#define uchar unsigned char
#define uint unsigned int
#define port0 P0
#define ale P1_0
#define c P1_1
#define b P1_2
#define a P1_3
#define oe P1_4
#define eoc P1_5
#define start P1_6
int dig[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92
,0x82,0xF8,0x80,0x90};
		uchar tram,chuc,donvi;
		uint x;
void delay(int x)
{
	int i;
	for(i=0;i<x;i++);
}
void tachso(void)
{
	tram=x/100;
	chuc=(x/10)%10;
	donvi=x%10;
}
void giaima(int x)
{ 
	if(x==1)
		{a=0;b=0;c=0;}
	if(x==2)
		{a=1;b=0;c=0;}
	if(x==3)
		{a=0;b=1;c=0;}
	if(x==4)
		{a=1;b=1;c=0;}
	if(x==5)
		{a=0;b=0;c=1;}
	if(x==6)
		{a=1;b=0;c=1;}
	if(x==7)
		{a=0;b=1;c=1;}
	if(x==8)
		{a=1;b=1;c=1;}
}
void main()
{
	int i;
	oe = 1;
	for(i=0;i<8;i++)
	{ int tam;
	for(tam=0;tam<30;tam++)
	{
		P2=0x01;
		P0=dig[i+1];
		P2_4=0;
		delay(1000);
		start=0;
		ale=0;
		eoc=1;
		giaima(i+1);
		delay(100);
		start=1;
		ale=1;
		delay(500);
		start=0;
		ale=0;
		while(eoc==0);
			delay(100);
			eoc=1;
			x=P3;
			tachso();
			P2=0x02;
			P0=dig[tram];
			P2_4=1;
			delay(500);
			P2=0x04;
			P0=dig[chuc];
			P2_4=1;
			delay(500);
			P2=0x08;
			P0=dig[donvi];
			P2_4=1;
			delay(500);
}
}
}