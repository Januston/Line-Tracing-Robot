opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F690
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "C:\Users\Administrator\Desktop\Robo Code\source.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Administrator\Desktop\Robo Code\source.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF ;#
	FNCALL	_main,_init_hardware
	FNCALL	_main,_moveForward
	FNCALL	_main,_moveLeft
	FNCALL	_main,_moveRight
	FNCALL	_main,_turnAround
	FNCALL	_main,_stop
	FNROOT	_main
	FNCALL	intlevel1,_handleChange
	global	intlevel1
	FNROOT	intlevel1
	global	_buttonoff
	global	_constant
	global	_counter
	global	_idk
	global	_start
	global	_turn
	global	_adcLeft
	global	_adcRight
	global	_ADCON0
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:
_ADCON0	set	31
	global	_ADCON0bits
_ADCON0bits	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCON
_INTCON	set	11
	global	_PIR1bits
_PIR1bits	set	12
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_RA5
_RA5	set	45
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC1
_RC1	set	57
	global	_RC7
_RC7	set	63
	global	_PIE1bits
_PIE1bits	set	140
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"Robo Code.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_adcLeft:
       ds      2

_adcRight:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_buttonoff:
       ds      2

_constant:
       ds      2

_counter:
       ds      2

_idk:
       ds      2

_start:
       ds      2

_turn:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_hardware
?_init_hardware:	; 0 bytes @ 0x0
	global	?_moveForward
?_moveForward:	; 0 bytes @ 0x0
	global	?_moveLeft
?_moveLeft:	; 0 bytes @ 0x0
	global	?_moveRight
?_moveRight:	; 0 bytes @ 0x0
	global	?_turnAround
?_turnAround:	; 0 bytes @ 0x0
	global	?_stop
?_stop:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_handleChange
?_handleChange:	; 0 bytes @ 0x0
	global	??_handleChange
??_handleChange:	; 0 bytes @ 0x0
	ds	4
	global	??_init_hardware
??_init_hardware:	; 0 bytes @ 0x4
	global	??_moveForward
??_moveForward:	; 0 bytes @ 0x4
	global	??_moveLeft
??_moveLeft:	; 0 bytes @ 0x4
	global	??_moveRight
??_moveRight:	; 0 bytes @ 0x4
	global	??_stop
??_stop:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_turnAround
??_turnAround:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80      3      15
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _handleChange in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_turnAround
;;
;; Critical Paths under _handleChange in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _handleChange in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _handleChange in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0       0
;;                                              4 COMMON     2     2      0
;;                      _init_hardware
;;                        _moveForward
;;                           _moveLeft
;;                          _moveRight
;;                         _turnAround
;;                               _stop
;; ---------------------------------------------------------------------------------
;; (1) _turnAround                                           3     3      0       0
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _stop                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _moveRight                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _moveLeft                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _moveForward                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_hardware                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _handleChange                                         4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_hardware
;;   _moveForward
;;   _moveLeft
;;   _moveRight
;;   _turnAround
;;   _stop
;;
;; _handleChange (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      3       F       3       18.8%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0      19       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0      1A      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 70 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_hardware
;;		_moveForward
;;		_moveLeft
;;		_moveRight
;;		_turnAround
;;		_stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	70
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	72
	
l3313:	
;source.c: 72: init_hardware();
	fcall	_init_hardware
	goto	l3315
	line	73
;source.c: 73: while(1) {
	
l917:	
	line	74
	
l3315:	
;source.c: 74: if (RA5 ==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l3397
u2580:
	line	75
	
l3317:	
;source.c: 75: buttonoff = 1;
	movlw	low(01h)
	movwf	(_buttonoff)
	movlw	high(01h)
	movwf	((_buttonoff))+1
	goto	l3397
	line	76
	
l918:	
	line	77
;source.c: 76: }
;source.c: 77: while(buttonoff == 1){
	goto	l3397
	
l920:	
	line	78
	
l3319:	
;source.c: 78: moveForward();
	fcall	_moveForward
	line	79
	
l3321:	
;source.c: 79: RC7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
	line	80
	
l3323:	
;source.c: 80: RC1 = 0;
	bcf	(57/8),(57)&7
	line	81
	
l3325:	
;source.c: 81: ADCON0bits.CHS= 0b0111;
	movf	(31),w	;volatile
	andlw	not (((1<<4)-1)<<2)
	iorlw	(07h & ((1<<4)-1))<<2
	movwf	(31)	;volatile
	line	82
	
l3327:	
;source.c: 82: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	83
;source.c: 83: while(GO_DONE == 1) {
	goto	l921
	
l922:	
	line	84
	
l921:	
	line	83
	btfsc	(249/8),(249)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l921
u2590:
	goto	l3329
	
l923:	
	line	85
	
l3329:	
;source.c: 84: }
;source.c: 85: adcRight=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_adcRight)
	movf	1+(??_main+0)+0,w
	movwf	(_adcRight+1)
	line	86
	
l3331:	
;source.c: 86: ADCON0bits.CHS=0b0110;
	movf	(31),w	;volatile
	andlw	not (((1<<4)-1)<<2)
	iorlw	(06h & ((1<<4)-1))<<2
	movwf	(31)	;volatile
	line	87
	
l3333:	
;source.c: 87: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	88
;source.c: 88: while(GO_DONE==1){
	goto	l924
	
l925:	
	line	89
	
l924:	
	line	88
	btfsc	(249/8),(249)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l924
u2600:
	goto	l3335
	
l926:	
	line	90
	
l3335:	
;source.c: 89: }
;source.c: 90: adcLeft=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_adcLeft)
	movf	1+(??_main+0)+0,w
	movwf	(_adcLeft+1)
	line	95
	
l3337:	
;source.c: 95: if (adcRight >=120 && adcLeft <= 119) {
	movf	(_adcRight+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(078h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2615
	movlw	low(078h)
	subwf	(_adcRight),w
u2615:

	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l3349
u2610:
	
l3339:	
	movf	(_adcLeft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(078h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2625
	movlw	low(078h)
	subwf	(_adcLeft),w
u2625:

	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l3349
u2620:
	line	96
	
l3341:	
;source.c: 96: RC7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(63/8),(63)&7
	line	97
;source.c: 97: RC1 = 0;
	bcf	(57/8),(57)&7
	line	98
	
l3343:	
;source.c: 98: moveLeft();
	fcall	_moveLeft
	line	99
	
l3345:	
;source.c: 99: _delay((unsigned long)((150)*(4000000/4000.0)));
	opt asmopt_off
movlw	195
movwf	((??_main+0)+0+1),f
	movlw	205
movwf	((??_main+0)+0),f
u2707:
	decfsz	((??_main+0)+0),f
	goto	u2707
	decfsz	((??_main+0)+0+1),f
	goto	u2707
opt asmopt_on

	line	100
	
l3347:	
;source.c: 100: idk++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_idk),f
	skipnc
	incf	(_idk+1),f
	movlw	high(01h)
	addwf	(_idk+1),f
	goto	l3349
	line	101
	
l927:	
	line	106
	
l3349:	
;source.c: 101: }
;source.c: 106: if(adcRight<= 119&&adcLeft>= 120) {
	movf	(_adcRight+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(078h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(078h)
	subwf	(_adcRight),w
u2635:

	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l3361
u2630:
	
l3351:	
	movf	(_adcLeft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(078h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(078h)
	subwf	(_adcLeft),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l3361
u2640:
	line	107
	
l3353:	
;source.c: 107: RC7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
	line	108
;source.c: 108: RC1 = 1;
	bsf	(57/8),(57)&7
	line	109
	
l3355:	
;source.c: 109: moveRight();
	fcall	_moveRight
	line	110
	
l3357:	
;source.c: 110: _delay((unsigned long)((150)*(4000000/4000.0)));
	opt asmopt_off
movlw	195
movwf	((??_main+0)+0+1),f
	movlw	205
movwf	((??_main+0)+0),f
u2717:
	decfsz	((??_main+0)+0),f
	goto	u2717
	decfsz	((??_main+0)+0+1),f
	goto	u2717
opt asmopt_on

	line	111
	
l3359:	
;source.c: 111: idk++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_idk),f
	skipnc
	incf	(_idk+1),f
	movlw	high(01h)
	addwf	(_idk+1),f
	goto	l3361
	line	112
	
l928:	
	line	118
	
l3361:	
;source.c: 112: }
;source.c: 118: if (adcRight>115 && adcLeft > 115 && idk != 0) {
	movf	(_adcRight+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(074h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2655
	movlw	low(074h)
	subwf	(_adcRight),w
u2655:

	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l3375
u2650:
	
l3363:	
	movf	(_adcLeft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(074h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2665
	movlw	low(074h)
	subwf	(_adcLeft),w
u2665:

	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l3375
u2660:
	
l3365:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_idk+1),w
	iorwf	(_idk),w
	skipnz
	goto	u2671
	goto	u2670
u2671:
	goto	l3375
u2670:
	line	119
	
l3367:	
;source.c: 119: counter++;
	movlw	low(01h)
	addwf	(_counter),f
	skipnc
	incf	(_counter+1),f
	movlw	high(01h)
	addwf	(_counter+1),f
	line	120
	
l3369:	
;source.c: 120: RC7 = 1;
	bsf	(63/8),(63)&7
	line	121
	
l3371:	
;source.c: 121: RC1 = 1;
	bsf	(57/8),(57)&7
	line	122
	
l3373:	
;source.c: 122: turnAround();
	fcall	_turnAround
	goto	l3375
	line	123
	
l929:	
	line	124
	
l3375:	
;source.c: 123: }
;source.c: 124: if(counter == 4) {
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_counter),w
	iorwf	(_counter+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l3395
u2680:
	line	125
	
l3377:	
;source.c: 125: stop();
	fcall	_stop
	line	126
	
l3379:	
;source.c: 126: RC7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
	line	127
	
l3381:	
;source.c: 127: RC1 = 0;
	bcf	(57/8),(57)&7
	line	128
	
l3383:	
;source.c: 128: RC7 = 1;
	bsf	(63/8),(63)&7
	line	129
	
l3385:	
;source.c: 129: RC1 = 1;
	bsf	(57/8),(57)&7
	line	130
	
l3387:	
;source.c: 130: RC7 = 0;
	bcf	(63/8),(63)&7
	line	131
	
l3389:	
;source.c: 131: RC1 = 0;
	bcf	(57/8),(57)&7
	line	132
	
l3391:	
;source.c: 132: RC7 = 1;
	bsf	(63/8),(63)&7
	line	133
	
l3393:	
;source.c: 133: RC1 = 1;
	bsf	(57/8),(57)&7
	goto	l3395
	line	134
	
l930:	
	line	135
	
l3395:	
;source.c: 134: }
;source.c: 135: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2727:
	decfsz	((??_main+0)+0),f
	goto	u2727
	decfsz	((??_main+0)+0+1),f
	goto	u2727
	clrwdt
opt asmopt_on

	goto	l3397
	line	136
	
l919:	
	line	77
	
l3397:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_buttonoff),w
	iorwf	(_buttonoff+1),w
	skipnz
	goto	u2691
	goto	u2690
u2691:
	goto	l3319
u2690:
	goto	l3315
	
l931:	
	goto	l3315
	line	137
	
l932:	
	line	73
	goto	l3315
	
l933:	
	line	138
	
l934:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_turnAround
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _turnAround *****************
;; Defined at:
;;		line 202 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text313
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	202
	global	__size_of_turnAround
	__size_of_turnAround	equ	__end_of_turnAround-_turnAround
	
_turnAround:	
	opt	stack 6
; Regs used in _turnAround: [wreg+status,2+btemp+1]
	line	203
	
l3293:	
;source.c: 203: turn = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_turn)
	clrf	(_turn+1)
	line	204
	
l3295:	
;source.c: 204: RB4 = 1;
	bsf	(52/8),(52)&7
	line	205
	
l3297:	
;source.c: 205: RB6 = 1;
	bsf	(54/8),(54)&7
	line	206
	
l3299:	
;source.c: 206: RB7 = 0;
	bcf	(55/8),(55)&7
	line	207
	
l3301:	
;source.c: 207: _delay((unsigned long)((750)*(4000000/4000.0)));
	opt asmopt_off
movlw  4
movwf	((??_turnAround+0)+0+2),f
movlw	207
movwf	((??_turnAround+0)+0+1),f
	movlw	3
movwf	((??_turnAround+0)+0),f
u2737:
	decfsz	((??_turnAround+0)+0),f
	goto	u2737
	decfsz	((??_turnAround+0)+0+1),f
	goto	u2737
	decfsz	((??_turnAround+0)+0+2),f
	goto	u2737
	nop2
opt asmopt_on

	line	208
;source.c: 208: while (adcRight >= 120 && adcLeft > 120 && turn != 1) {
	goto	l3307
	
l959:	
	line	209
;source.c: 209: RB4 = 1;
	bsf	(52/8),(52)&7
	line	210
;source.c: 210: RB6 = 1;
	bsf	(54/8),(54)&7
	line	211
;source.c: 211: RB7 = 0;
	bcf	(55/8),(55)&7
	line	212
;source.c: 212: RB5 = 0;
	bcf	(53/8),(53)&7
	line	213
	
l3303:	
;source.c: 213: if (adcRight <= 120) {
	movf	(_adcRight+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(079h)
	subwf	(_adcRight),w
u2545:

	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l3307
u2540:
	line	214
	
l3305:	
;source.c: 214: turn = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_turn)
	movlw	high(01h)
	movwf	((_turn))+1
	goto	l3307
	line	215
	
l960:	
	goto	l3307
	line	216
	
l958:	
	line	208
	
l3307:	
	movf	(_adcRight+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(078h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(078h)
	subwf	(_adcRight),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l964
u2550:
	
l3309:	
	movf	(_adcLeft+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(079h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2565
	movlw	low(079h)
	subwf	(_adcLeft),w
u2565:

	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l964
u2560:
	
l3311:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_turn),w
	iorwf	(_turn+1),w
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l959
u2570:
	goto	l964
	
l962:	
	goto	l964
	
l963:	
	line	217
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_turnAround
	__end_of_turnAround:
;; =============== function _turnAround ends ============

	signat	_turnAround,88
	global	_stop
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _stop *****************
;; Defined at:
;;		line 172 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text314
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	172
	global	__size_of_stop
	__size_of_stop	equ	__end_of_stop-_stop
	
_stop:	
	opt	stack 6
; Regs used in _stop: []
	line	173
	
l3185:	
;source.c: 173: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	174
;source.c: 174: RB7 = 0;
	bcf	(55/8),(55)&7
	line	175
;source.c: 175: RB6 = 0;
	bcf	(54/8),(54)&7
	line	176
;source.c: 176: RB5 = 0;
	bcf	(53/8),(53)&7
	line	177
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_stop
	__end_of_stop:
;; =============== function _stop ends ============

	signat	_stop,88
	global	_moveRight
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function _moveRight *****************
;; Defined at:
;;		line 184 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text315
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	184
	global	__size_of_moveRight
	__size_of_moveRight	equ	__end_of_moveRight-_moveRight
	
_moveRight:	
	opt	stack 6
; Regs used in _moveRight: []
	line	185
	
l3183:	
;source.c: 185: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	186
;source.c: 186: RB5 = 1;
	bsf	(53/8),(53)&7
	line	187
;source.c: 187: RB4 = 0;
	bcf	(52/8),(52)&7
	line	188
;source.c: 188: RB6 = 0;
	bcf	(54/8),(54)&7
	line	189
	
l949:	
	return
	opt stack 0
GLOBAL	__end_of_moveRight
	__end_of_moveRight:
;; =============== function _moveRight ends ============

	signat	_moveRight,88
	global	_moveLeft
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function _moveLeft *****************
;; Defined at:
;;		line 178 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	178
	global	__size_of_moveLeft
	__size_of_moveLeft	equ	__end_of_moveLeft-_moveLeft
	
_moveLeft:	
	opt	stack 6
; Regs used in _moveLeft: []
	line	179
	
l3181:	
;source.c: 179: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	180
;source.c: 180: RB6 = 1;
	bsf	(54/8),(54)&7
	line	181
;source.c: 181: RB7 = 0;
	bcf	(55/8),(55)&7
	line	182
;source.c: 182: RB5 = 0;
	bcf	(53/8),(53)&7
	line	183
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_moveLeft
	__end_of_moveLeft:
;; =============== function _moveLeft ends ============

	signat	_moveLeft,88
	global	_moveForward
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function _moveForward *****************
;; Defined at:
;;		line 190 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	190
	global	__size_of_moveForward
	__size_of_moveForward	equ	__end_of_moveForward-_moveForward
	
_moveForward:	
	opt	stack 6
; Regs used in _moveForward: []
	line	191
	
l3179:	
;source.c: 191: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	192
;source.c: 192: RB4 = 1;
	bsf	(52/8),(52)&7
	line	193
;source.c: 193: RB6 = 0;
	bcf	(54/8),(54)&7
	line	194
;source.c: 194: RB5 = 0;
	bcf	(53/8),(53)&7
	line	195
	
l952:	
	return
	opt stack 0
GLOBAL	__end_of_moveForward
	__end_of_moveForward:
;; =============== function _moveForward ends ============

	signat	_moveForward,88
	global	_init_hardware
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 148 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	148
	global	__size_of_init_hardware
	__size_of_init_hardware	equ	__end_of_init_hardware-_init_hardware
	
_init_hardware:	
	opt	stack 6
; Regs used in _init_hardware: [wreg+status,2]
	line	152
	
l3171:	
;source.c: 152: INTCON = 0b11000000;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	153
	
l3173:	
;source.c: 153: PIE1bits.ADIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,6	;volatile
	line	157
;source.c: 157: ADCON0 = 0b00011101;
	movlw	(01Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	159
;source.c: 159: ANSEL = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h	;volatile
	line	160
;source.c: 160: ANSELH = 0b00000001;
	movlw	(01h)
	movwf	(287)^0100h	;volatile
	line	163
;source.c: 163: TRISA = 0b00110000;
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	164
	
l3175:	
;source.c: 164: TRISB = 0b00000000;
	clrf	(134)^080h	;volatile
	line	165
	
l3177:	
;source.c: 165: TRISC = 0b00001100;
	movlw	(0Ch)
	movwf	(135)^080h	;volatile
	line	168
;source.c: 168: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	169
;source.c: 169: PORTB = 0b00000000;
	clrf	(6)	;volatile
	line	170
;source.c: 170: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	171
	
l940:	
	return
	opt stack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
;; =============== function _init_hardware ends ============

	signat	_init_hardware,88
	global	_handleChange
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function _handleChange *****************
;; Defined at:
;;		line 139 in file "C:\Users\Administrator\Desktop\Robo Code\source.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Users\Administrator\Desktop\Robo Code\source.c"
	line	139
	global	__size_of_handleChange
	__size_of_handleChange	equ	__end_of_handleChange-_handleChange
	
_handleChange:	
	opt	stack 6
; Regs used in _handleChange: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_handleChange+0)
	movf	fsr0,w
	movwf	(??_handleChange+1)
	movf	pclath,w
	movwf	(??_handleChange+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_handleChange+3)
	ljmp	_handleChange
psect	text319
	line	141
	
i1l2203:	
;source.c: 141: PIR1bits.ADIF=0;
	bcf	(12),6	;volatile
	line	144
	
i1l937:	
	movf	(??_handleChange+3),w
	movwf	btemp+1
	movf	(??_handleChange+2),w
	movwf	pclath
	movf	(??_handleChange+1),w
	movwf	fsr0
	swapf	(??_handleChange+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_handleChange
	__end_of_handleChange:
;; =============== function _handleChange ends ============

	signat	_handleChange,88
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
