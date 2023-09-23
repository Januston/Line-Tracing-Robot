/*  author: 
	last update: 
	Description: 
	Hardware setup:


*/
#include <htc.h>
#include <pic.h>	// include a library of procedure specific to the PIC family of microcontrollers

__CONFIG( FOSC_INTRCIO & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & 
IESO_OFF & FCMEN_OFF );

//defined constants- the compiler does a substitution 
#define delay1 1000000

//Global Variables 
#define forwardright RB4
#define forwardleft RB7
#define backright RB5
#define backleft RB6




// PREDEFINE PROCEDURES: procedure must be defined before you can use them

void init_hardware(void);

unsigned int start = 0;

void main(void)
{
	init_hardware();           //run procedure init_hardware()
	
	while(1)
	{
//if(RA5==1){
//
//if(start==1){
//start = 0;
//}else{
//start=1;
//}
//}
//if(start==1)
//	forwardright = 1;
//	forwardleft = 1;
//	_delay(3000000);
//	forwardleft = 0;
//	backleft = 1;
//	_delay(2000000);
//	backleft = 0;

RB5=1;
forwardleft=1;

	
}
//	_delay(delay1);
//	PORTC=0b11010110;
//		_delay(delay1);
//	PORTC=0b11010000;
//		_delay(delay1);
//	PORTC=0b11101110;
//	_delay(delay1);
//	PORTC=0b10000000;
//	_delay(delay1);
//	PORTC=0b01000000;
//	_delay(delay1);
//	PORTC=0b00100000;
//	_delay(delay1);
//	PORTC=0b00010000;
//	_delay(delay1);
//	PORTC=0b00001000;
//	_delay(delay1);
//	PORTC=0b00000100;
//	_delay(delay1);
//	PORTC=0b00000010;
void init_hardware(void)   //set it and forget it
{
	// set analogue pins as analogue(1) or digital(0) 
	ANSEL  = 0b00000000;           // AN7 to AN0
	ANSELH = 0b00000000;	       //  n/c , n/c, n/c, n/c, AN11, AN10,AN9, AN8
	
       // set pins as Input(1) or Output(0)
	TRISA = 0b00110000;	
	TRISB = 0b00000000;
	TRISC = 0b00000000;
	
       //initalize the ports 
	PORTA = 0b00000000;
	PORTB = 0b00000000;
	PORTC = 0b00000000;	
}
