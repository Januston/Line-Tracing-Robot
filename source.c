/****************************************************************************\
	author: 
	last update: 
	Description: 
	Hardware setup:
\****************************************************************************/
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
	#define button RA5
	#define rightLight RC7
	#define leftLight RC1
	#define _XTAL_FREQ 4000000
	#define sensorleft RC6
	#define sensorright RC3
	
	int start = 0;
	int constant = 0;
	int adcLeft=0;
	int adcRight=0;
	int counter = 0;
	int idk = 0;
	int buttonoff = 0;
	int turn = 0;
	
	// PREDEFINE PROCEDURES: procedure must be defined before you can use them
	
	void init_hardware(void);
	void stop(void);
	void moveLeft(void);
	void moveRight(void);
	void moveBackward(void);
	void moveForward(void);
	void turnAround(void);
	void main(void)
	{
		
		init_hardware();           //run procedure init_hardware()
		while(1)  {
		if (button ==1){
		buttonoff = 1;	
		}	
		while(buttonoff == 1){
			moveForward();
			counter = 0;
			rightLight = 0;
			leftLight = 0;
			ADCON0bits.CHS=  0b0111;
    		GO_DONE = 1;
	 		adcRight=ADRESH;
	 		ADCON0bits.CHS=0b0110;
	 		GO_DONE=1;
			adcLeft=ADRESH;
/*****************************************************************************
This code checks to see if the right sensor has detected the black line. If the 
sensor detects the line, it turns left.
*****************************************************************************/
	 		if (adcRight >=120 && adcLeft <= 119) {
				rightLight = 1;
				leftLight = 0;
				moveLeft();
				__delay_ms(150);
			} 
/*****************************************************************************
This code checks to see if the left sensor has detected the black line. If the 
sensor detects the line, it turns right.
*****************************************************************************/
	 		if(adcRight<= 119&&adcLeft>= 120) {
				rightLight = 0;
				leftLight = 1;
				moveRight();
				__delay_ms(150);
			} 

/*****************************************************************************
This code will check for the double lines
*****************************************************************************/
			if (adcRight > 119 && adcLeft > 119) {
				counter++;
			}
/*****************************************************************************
This code will change the direction depending on the intersection
*****************************************************************************/
			if (counter == 1) {
			moveForward();	
			
		}
	}
}
void interrupt handleChange (void){

PIR1bits.ADIF=0;

	
}	


	void init_hardware(void)   //set it and forget it
	{
		
		//Initialize Interrupts
		
	INTCON = 0b11000000;
	PIE1bits.ADIE=1;
//		PIE2bits.C1IE=0;	
//		
		
		ADCON0 = 0b00011101;
		// set analogue pins as analogue(1) or digital(0) 
		ANSEL  = 0b01000000;           // AN7 to AN0
		ANSELH = 0b00000001;	       //  n/c , n/c, n/c, n/c, AN11, AN10,AN9, AN8
		
	       // set pins as Input(1) or Output(0)
		TRISA = 0b00110000;	
		TRISB = 0b00000000;
		TRISC = 0b00001100;
		
	       //initalize the ports 
		PORTA = 0b00000000;
		PORTB = 0b00000000;
		PORTC = 0b00000000;	
	}
void stop (void) {
	forwardright = 0;
	forwardleft = 0;
	backleft = 0;
	backright = 0;
}	
void moveLeft(void) {
	forwardright = 1;
	backleft = 1;
	forwardleft = 0;
	backright = 0;
}
void moveRight(void) {
	forwardleft = 1;
	backright = 1;
	forwardright = 0;
	backleft = 0;
}
void moveForward(void) {
	forwardleft = 1;
	forwardright = 1;
	backleft = 0;
	backright = 0;
}
void moveBackward(void) {
	backleft = 1;
	backright = 1;
	forwardleft = 0;
	forwardright = 0;
}	
void turnAround(void) {
	turn = 0;
	forwardright = 1;
	backleft = 1;
	forwardleft = 0;
	__delay_ms(750);
	while (adcRight >= 120 && adcLeft > 120 && turn != 1) {
		forwardright = 1;
		backleft = 1;
		forwardleft = 0;
		backright = 0;
		if (adcRight <= 120) {
			turn = 1;
		}
	}
}				