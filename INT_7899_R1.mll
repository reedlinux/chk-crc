Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 1

   1    MICROLOK_II PROGRAM INT_7899_R1;
   2    
   3    /*
   4 // -------------------------------------------------------------------------------------------

----------------------------------------------
   5 // 
   6 // PROJECT: SUNRAIL 
   7 // LOCATION: SIGNALS 7899  (MP 789.87)  
   8 // PROGRAM NAME: INT_7899_R1  (Program to be used for Track 1 & Track 2)
   9 // DATE: JANUARY 31, 2013
  10 // DESIGNER: NST
  11 // CHECKER: NST
  12 // 
  13 // --------------------------------------------------------- WARNING -------------------------

---------------------------------------
  14 // 
  15 // PRIOR TO PLACING THIS PROGRAM SET FORTH IN THIS LISTING INTO REVENUE SERVICE, THE PROGRAM A

ND THE COMPLETE SYSTEM OF WHICH THIS PROGRAM IS A PART MUST BE SERVICE (OPERATION) TESTED. THIS IS 

A VITAL PROGRAM. ANY CHANGES MADE TO THIS PROGRAM CAN COMPROMISE IT'S SAFE PERFORMANCE AND OPERATIO

N.
  16 // 
  17 // -------------------------------------------------------------------------------------------

----------------------------------------------
  18 // 
  19 // PROGRAM HISTORY & REVISION LEVEL
  20 // 
  21 // Rev 0.0  - 01/30/13 - New program, INT_7899, for signal location 7899 (MP 789.87) on the
  22 // SunRail Project.  Program based on ASTS_5CSX001_R5 (CSX  Typical - last revised 01/14/2012)

, with many of the program options removed; this program written to be location specific.
  23 // 
  24 // Rev 0.1  - 01/31/13 - As Simulated.
  25 // 
  26 // Rev 1.0  - 01/31/13 - As Checked.
  27 // 
  28 // DATE		REVISION LEVEL	DESCRIPTION		CHANGED BY		CRC#/CHK#
  29 // 
  30 // 01/30/13	Rev 0.0		As Designed		NST/NST		1253/2FBA
  31 // 01/31/13	Rev 0.1		As Simulated		NST/NST		1253/2FBA
  32 // 01/31/13	Rev 1.0		As Checked		NST/NST		B7ED/3138
  33 // 
  34 // -------------------------------------------------------------------------------------------

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 2


----------------------------------------------
  35 // 
  36 // PROGRAM NOTES:
  37 // 
  38 // - CSX Typical (ASTS_5CSX001_R5) program, last revised 01/04/2012, used as a typical
  39 // program for writing this INT 7899 program.  Also, previously submitted program for the SIGN

AL INT 7731 location used as reference.  
  40 // - This INT 7899 program has been written to be location specific, with many program options

 removed as shown in CSX typical.  
  41 // - This INT 7899 program has been written based on the 7899 hardware design,
  42 // NEW WORK, ASTS/TDA 02/17/12, last received via ASTS FTP on 12/13/12 and the aspect chart, s

heet no. RA-185A, revision date 08/24/12.
  43 // 
  44 // -------------------------------------------------------------------------------------------

----------------------------------------------
  45 // */
  46    
  47     
  48    INTERFACE
  49    
  50    LOCAL
  51    
  52    BOARD: VIO1
  53    ADJUSTABLE ENABLE: 1
  54    TYPE: IN8.OUT8
  55     
  56    OUTPUT:
  57      RWLOUT, LWLOUT, SPARE, SPARE,
  58      SPARE, SPARE, SPARE, SPARE;
  59     
  60    INPUT:
  61       RNWPI, RDOOR, LTO, LMP_TST, 
  62       LNWPI, LDOOR, RTO, PO;
  63    
  64    
  65    BOARD:SIG
  66    ADJUSTABLE ENABLE: 1 
  67    TYPE: LAMP16
  68     
  69    ADJUSTABLE 18 WATT MODE 1
  70      OUTPUT:
  71        SPARE, SPARE, SPARE, SPARE,
  72        SPARE, SPARE, SPARE, SPARE,

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 3

  73    
  74        RUGE, RUYE, RURE, SPARE, 
  75        RLYE, RLRE, SPARE, SPARE;
  76    
  77      LAMP.OUT:
  78        SPARE, SPARE, SPARE, SPARE,
  79        SPARE, SPARE, SPARE, SPARE,
  80    
  81        RUGELOI, RUYELOI, RURELOI, SPARE, 
  82        RLYELOI, RLRELOI, SPARE, SPARE;
  83    
  84    BOARD: ECODE
  85    ADJUSTABLE ENABLE: 1
  86    	TYPE: ECODE.TRACK
  87    	
  88    TRACKA:
  89    		TRACK.NAME: L
  90    		ADJUSTABLE ENABLE: 1;
  91    		ADJUSTABLE CODE5.SUPPORT: ALTERNATING;
  92    		ADJUSTABLE CODEM.SUPPORT.ENABLED: 1;
  93    		FIXED CODE.GROUP.SELECT: FREIGHT;
  94    
  95    TRACKB:
  96    		TRACK.NAME: R
  97    		ADJUSTABLE ENABLE: 1;
  98    		ADJUSTABLE CODE5.SUPPORT: ALTERNATING;
  99    		ADJUSTABLE CODEM.SUPPORT.ENABLED: 1;
 100    		FIXED CODE.GROUP.SELECT: FREIGHT;
 101    
 102    
 103    
 104    COMM
 105    
 106    LINK: PEER_COM
 107    ADJUSTABLE ENABLE: 1
 108    PROTOCOL: MII.PEER
 109    ADJUSTABLE PORT: 3;
 110    ADJUSTABLE BAUD: 9600;
 111    ADJUSTABLE STOPBITS: 1;
 112    ADJUSTABLE PARITY: NONE;
 113    ADJUSTABLE KEY.ON.DELAY: 0;
 114    ADJUSTABLE KEY.OFF.DELAY: 0;
 115    ADJUSTABLE GRANT.DELAY: 100:MSEC;
 116    ADJUSTABLE POINT.POINT: 1;
 117    
 118    ADJUSTABLE MII.ADDRESS: 9  
 119    ADJUSTABLE ENABLE: 1
 120    STATION.NAME: X_LIGHT;

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 4

 121    ADJUSTABLE PEER.ADDRESS: 10;
 122    ADJUSTABLE TIME.STAMP: 1; 
 123    ADJUSTABLE ACK.TIMEOUT: 4:SEC; 
 124    ADJUSTABLE HEARTBEAT.INTERVAL: 4:SEC;
 125    ADJUSTABLE INDICATION.UPDATE.CYCLE: 10;
 126    ADJUSTABLE STALE.DATA.TIMEOUT: 10:SEC;
 127    ADJUSTABLE CLOCK.MASTER: 0;               
 128    
 129    
 130    OUTPUT:
 131       R_CROSS_OUT;
 132     
 133    INPUT:
 134       R_CROSS_IN;
 135    
 136    
 137    ADJUSTABLE MII.DEBUG.PORT.ADDRESS: 4096
 138    ADJUSTABLE ENABLE: 0
 139    STATION.NAME: DEBUG.PORT;
 140    ADJUSTABLE PEER.ADDRESS: 8192;
 141    FIXED INDICATION.UPDATE.CYCLE: 10;
 142    FIXED STALE.DATA.TIMEOUT: 3:MIN;
 143    FIXED CLOCK.MASTER: 0;
 144    
 145    
 146    BOOLEAN BITS
 147    
 148    LSTK, LTKO1, LTKO2, LTKO5, LTKO6, LTKO7, LTKO8, LTKOM,
 149    RSTK, RTKO1, RTKO2, RTKO5, RTKO6, RTKO7, RTKOM, 
 150    LLOSTMR, RLOSTMR, LNWP, RNWP, LTOP, RTOP,
 151    RUGELO, RUYELO, RURELO, RLYELO, RLRELO,
 152    RUGER, RUYER, RURER, RLYER, RLRER, RE,
 153    LSCAN, RSCAN, LCSLOT, RCSLOT, RSSLOT,
 154    LSAP, RSAP, LLA, RLA, POP, OTS, L5SUG, R5SUG, FLASH,
 155    LTKI1, LTKI1P, LTKI2, LTKI5, LTKI6, LTKI7, LTKIM, LSH, LSHP, 
 156    RTKI1, RTKI1P, RTKI2, RTKI5, RTKI6, RTKI7, RTKI8, RTKIM, RSH, RSHP, 
 157    DIPCHK, DIP1, DIP2, 
 158    AFPT, STEADY_LIT, 
 159    LAMPOUT, 
 160    LTKATMR, RTKATMR, LSHTMR, RSHTMR, LTKI1TMR, RTKI1TMR, AFDTMR, 
 161    LLLTMR, RLLTMR, LLSTMR, RLSTMR, LMITMR, RMITMR, CPS_SP;
 162    
 163    
 164    NV.BOOLEAN BITS
 165    
 166    RTDBEEP, LTDBEEP, RTDSTK, LTDSTK;
 167    
 168    

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 5

 169    TIMER BITS
 170    
 171    FIXED LLOSTMR, RLOSTMR, LNWP, RNWP: SET = 3:SEC CLEAR = 0:SEC;
   -1-
   -2-
   -3-
   -4-
 172    FIXED LTKATMR, RTKATMR: SET = 15:SEC CLEAR = 0:SEC;
   -5-
   -6-
 173    FIXED LSHTMR, RSHTMR, LTKI1TMR, RTKI1TMR: SET = 1:SEC CLEAR = 0:SEC;
   -7-
   -8-
   -9-
   -10-
 174    FIXED AFDTMR: SET = 8:SEC CLEAR = 0:SEC;
   -11-
 175    FIXED LLLTMR, RLLTMR: SET = 10:MIN CLEAR = 0:SEC;
   -12-
   -13-
 176    FIXED LLSTMR, RLSTMR: SET = 20:SEC CLEAR = 0:SEC;
   -14-
   -15-
 177    FIXED LMITMR, RMITMR: SET = 10:SEC CLEAR = 0:SEC;
   -16-
   -17-
 178    FIXED FLASH: SET = 1:SEC CLEAR = 750:MSEC;
   -18-
 179    FIXED RTDBEEP, LTDBEEP: SET = 2:SEC CLEAR = 0:SEC;
   -19-
   -20-
 180    FIXED CPS_SP: SET = 3:MIN CLEAR = 0:SEC;
   -21-
 181    
 182    
 183    LOG BITS
 184    
 185    CPS.ENABLE, CPS.STATUS, ERROR.RESTRICTED, 
 186    
 187    VIO1.ENABLED, RWLOUT, LWLOUT, 
 188    RNWPI, RDOOR, LTO, LMP_TST, LNWPI, LDOOR, RTO, PO,
 189    
 190    SIG.ENABLED, 
 191    RUGELOI, RUYELOI, RURELOI, RLYELOI, RLRELOI,
 192    
 193    ECODE.ENABLED, ECODE.L.ENABLED, ECODE.R.ENABLED,
 194    ECODE.L.NV.QUICKSHUNT, ECODE.L.CODE.VALID, ECODE.L.VALIDATE.CODE,
 195    ECODE.L.CODE.1.IN, ECODE.L.CODE.1.OUT, ECODE.L.CODE.2.IN, ECODE.L.CODE.2.OUT,

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 6

 196    ECODE.L.CODE.5.IN, ECODE.L.CODE.5.OUT, ECODE.L.CODE.6.IN, ECODE.L.CODE.6.OUT, ECODE.L.CODE.

7.IN, ECODE.L.CODE.7.OUT, ECODE.L.CODE.8.OUT,
 197    ECODE.L.CODE.M.IN, ECODE.L.CODE.M.OUT,
 198    ECODE.R.NV.QUICKSHUNT, ECODE.R.CODE.VALID, ECODE.R.VALIDATE.CODE,
 199    ECODE.R.CODE.1.IN, ECODE.R.CODE.1.OUT, ECODE.R.CODE.2.IN, ECODE.R.CODE.2.OUT,
 200    ECODE.R.CODE.5.IN, ECODE.R.CODE.5.OUT, ECODE.R.CODE.6.IN, ECODE.R.CODE.6.OUT, ECODE.R.CODE.

7.IN, ECODE.R.CODE.7.OUT, ECODE.R.CODE.8.IN, 
 201    ECODE.R.CODE.M.IN, ECODE.R.CODE.M.OUT,
 202    
 203    PEER_COM.ENABLED, PEER_COM.X_LIGHT.ENABLED, PEER_COM.X_LIGHT.STATUS,
 204    R_CROSS_OUT, R_CROSS_IN,
 205    
 206    
 207    LSTK, LTKO1, LTKO2, LTKO5, LTKO6, LTKO7, LTKO8, LTKOM, RSTK, RTKO1, RTKO2, RTKO5, RTKO6, RT

KO7, RTKOM, LLOSTMR, LNWP, RNWP, RUGELO, RUYELO, RURELO, RLRELO, RUGER, RUYER, RTKI1P, RSCAN, POP, 

OTS, R5SUG, RCSLOT, RE, RLA, RSSLOT, RLRER, LTKI1P, RURER, LTKI2, LTKI5, LTKI6, LTKI7, LTKIM, LSH, 

LSHP, RTKI1, RTKI2, RTKI5, RTKI6, RTKI7, RTKI8, RTKIM, RSH, RSHP, DIPCHK, LSAP, AFPT, RSAP, DIP1, D

IP2, L5SUG, STEADY_LIT, LAMPOUT, LCSLOT, LLA, LTOP, RTOP, LSCAN, RLOSTMR, LTKATMR, RTKATMR, LSHTMR,

 RSHTMR, LTKI1TMR, RTKI1TMR, AFDTMR, LLLTMR, RLLTMR, LLSTMR, RLSTMR, LMITMR, RMITMR, LTKI1, CPS_SP,

 RTDBEEP, LTDBEEP, RTDSTK, LTDSTK, RLYELO, RLYER;
 208    
 209    
 210    CONFIGURATION
 211    
 212    SYSTEM
 213    
 214    ADJUSTABLE DEBUG_PORT_ADDRESS:1;
 215    ADJUSTABLE DEBUG_PORT_BAUDRATE:9600;
 216    ADJUSTABLE LOGIC_TIMEOUT:2000:MSEC;
 217    ADJUSTABLE DELAY_RESET:0:MSEC;
 218    APPLICATION.VERSION: 2;
 219    
 220    USER BIT
 221     
 222       ID1:"ID:Set for desired operation and to match SW1",0;
 223       ID2:"ID:Set for desired operation and to match SW2",0;
 224       ID3:"ID:Set for desired operation and to match SW3",0;
 225       ID4:"ID:Set for desired operation and to match SW4",0;
 226       ID5:"ID:Set for desired operation and to match SW5",0;
 227       ID6:"ID:Set for desired operation and to match SW6",0;

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 7

 228       ID7:"ID:unused?",0;
 229       ID8:"ID:unused?",0;
 230    
 231       SW1:"SWITCHES:Set for desired operation and to match ID1",0;
 232       SW2:"SWITCHES:Set for desired operation and to match ID2",0;
 233       SW3:"SWITCHES:Set for desired operation and to match ID3",0;
 234       SW4:"SWITCHES:Set for desired operation and to match ID4",0;
 235       SW5:"SWITCHES:Set for desired operation and to match ID5",0;
 236       SW6:"SWITCHES:Set for desired operation and to match ID6",0;
 237       SW7:"SWITCHES:unused?",0;
 238       SW8:"SWITCHES:unused?",0;
 239    
 240       LOL_POR:"OPTIONS:Lamp out left?",0;
 241       POL_LOR:"OPTIONS:Power off left?",0;
 242    
 243       
 244    
 245    
 246       MCODE_LEFT:"OPTIONS:Is the next location to the left sending code M?",0;
 247       MCODE_RIGHT:"OPTIONS:Is the next location to the right sending code M?",0;
 248       LWL_ON:"OPTIONS:Electric lock on the left?",0;
 249       RWL_ON:"OPTIONS:Electric lock on the right?",0;
 250       STEADY_LIGHT:"OPTIONS:Disable approach lighting?",0;
 251       KILL_5:"CODE 5:Handthrow switches can prevent send of code 5?",0;
 252       LC1SW:"CODE 5:If track on right is up, send code 5 left?",0;
 253       LC5SW:"CODE 5:Pass code 5 to left?",0;
 254       RC1SW:"CODE 5:If track on left is up, send code 5 right?",0;
 255       RC5SW:"CODE 5:Pass code 5 right?",0;
 256    
 257    
 258    
 259    LOGIC BEGIN
 260    
 261    ASSIGN DIPCHK * ~CONFIGURE.ERROR TO CPS.ENABLE;
   -22-
 262    
 263    ASSIGN ERROR.RESTRICTED * LSH * RSH TO CPS_SP;
   -23-
 264    
 265    ASSIGN CPS_SP TO CPS.RESET;
   -24-
 266    
 267    ASSIGN ~FLASH * (~CPS.ENABLE + LSAP + RSAP) TO FLASH;
   -25-
 268    
 269    NV.ASSIGN (~CPS.ENABLE + LSAP) * ~FLASH + LSTK TO LED.1;
   -26-
 270    

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 8

 271    NV.ASSIGN (~CPS.ENABLE + RSAP) * ~FLASH + RSTK TO LED.2;
   -27-
 272    
 273    NV.ASSIGN ~CPS.ENABLE * ~FLASH TO LED.3, LED.4, LED.5, LED.6, LED.7, LED.8, ALARM.1;
   -28-
 274    
 275    NV.ASSIGN RTKI6 + RTDSTK * ~RSH TO RTDSTK;
   -29-
 276    
 277    NV.ASSIGN RTDSTK TO RTDBEEP;
   -30-
 278    
 279    NV.ASSIGN LTKI6 + LTDSTK * ~LSH TO LTDSTK;
   -31-
 280    
 281    NV.ASSIGN LTDSTK TO LTDBEEP;
   -32-
 282    
 283    NV.ASSIGN RTDSTK * ~RTDBEEP + LTDSTK * ~LTDBEEP TO ALARM.2;
   -33-
 284    
 285    ASSIGN LNWPI TO LNWP;
   -34-
 286    
 287    ASSIGN RNWPI TO RNWP;
   -35-
 288    
 289    ASSIGN LLOSTMR TO LTKI1;
   -36-
 290    
 291    ASSIGN ECODE.L.CODE.1.IN TO LLOSTMR;
   -37-
 292    
 293    ASSIGN ECODE.L.CODE.2.IN * LLOSTMR TO LTKI2;
   -38-
 294    
 295    ASSIGN ECODE.L.CODE.5.IN * LLOSTMR TO LTKI5;
   -39-
 296    
 297    ASSIGN ECODE.L.CODE.6.IN * LLOSTMR TO LTKI6;
   -40-
 298    
 299    ASSIGN ECODE.L.CODE.7.IN * LLOSTMR TO LTKI7;
   -41-
 300    
 301    ASSIGN ECODE.L.CODE.M.IN * LLOSTMR TO LTKIM;
   -42-
 302    

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 9

 303    ASSIGN ~LTKI1 TO LTKATMR;
   -43-
 304    
 305    ASSIGN (ECODE.L.CODE.2.IN + ECODE.L.CODE.7.IN) * LLOSTMR TO LSH;
   -44-
 306    
 307    ASSIGN ~LSH TO LSHTMR;
   -45-
 308    
 309    ASSIGN ~LSHTMR TO LSHP;
   -46-
 310    
 311    ASSIGN RLOSTMR TO RTKI1;
   -47-
 312    
 313    ASSIGN ECODE.R.CODE.1.IN TO RLOSTMR;
   -48-
 314    
 315    ASSIGN ECODE.R.CODE.2.IN * RLOSTMR TO RTKI2;
   -49-
 316    
 317    ASSIGN ECODE.R.CODE.5.IN * RLOSTMR TO RTKI5;
   -50-
 318    
 319    ASSIGN ECODE.R.CODE.6.IN * RLOSTMR TO RTKI6;
   -51-
 320    
 321    ASSIGN ECODE.R.CODE.7.IN * RLOSTMR TO RTKI7;
   -52-
 322    
 323    ASSIGN ECODE.R.CODE.8.IN * RLOSTMR TO RTKI8;
   -53-
 324    
 325    ASSIGN ECODE.R.CODE.M.IN * RLOSTMR TO RTKIM;
   -54-
 326    
 327    ASSIGN ~RTKI1 TO RTKATMR;
   -55-
 328    
 329    ASSIGN (ECODE.R.CODE.2.IN + ECODE.R.CODE.7.IN + ECODE.R.CODE.8.IN) * RLOSTMR TO RSH;
   -56-
 330    
 331    ASSIGN ~RSH TO RSHTMR;
   -57-
 332    
 333    ASSIGN ~RSHTMR TO RSHP;
   -58-
 334    

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 10

 335    ASSIGN (LSAP + RSAP) * ~AFPT TO AFDTMR;
   -59-
 336    
 337    ASSIGN (LSH * ~RTKI1 + RSH * ~LTKI1) TO AFPT;
   -60-
 338    
 339    ASSIGN (ID1 * SW1 + ~ID1 * ~SW1) * (ID2 * SW2 + ~ID2 * ~SW2) * (ID3 * SW3 + ~ID3 * ~SW3) * 

(ID4 * SW4 + ~ID4 * ~SW4) TO DIP1;
   -61-
 340    
 341    ASSIGN (ID5 * SW5 + ~ID5 * ~SW5) * (ID6 * SW6 + ~ID6 * ~SW6) * (ID7 * SW7 + ~ID7 * ~SW7) * 

(ID8 * SW8 + ~ID8 * ~SW8) TO DIP2;
   -62-
 342    
 343    ASSIGN DIP1 * DIP2 TO DIPCHK;
   -63-
 344    
 345    ASSIGN LC1SW * LC5SW + LC1SW * RTKI1 + LC5SW * RTKI5 TO L5SUG;
   -64-
 346    
 347    ASSIGN (~RUGELO + ~RUYELO + ~RURELO + ~RLYELO + ~RLRELO) TO LAMPOUT;
   -65-
 348    
 349    ASSIGN DIPCHK * ~LSTK * ~LTKO6 * LNWP * ~LDOOR TO LCSLOT;
   -66-
 350    
 351    ASSIGN (RSH + RSTK) * LSH TO LLA; 
   -67-
 352    
 353    ASSIGN LWL_ON * ~LNWP * LDOOR * ~LLA * ~LWLOUT TO LLLTMR;
   -68-
 354    
 355    ASSIGN LWL_ON * ~LNWP * LDOOR * LLA * ~LWLOUT TO LLSTMR;
   -69-
 356    
 357    ASSIGN (LTKI1 + LMITMR) * (~MCODE_LEFT + LTKIM) TO LMITMR;
   -70-
 358    
 359    ASSIGN (AFPT * LSH * ~RTKI1 + LSAP * ~AFDTMR) * ~LSTK * ~RSTK * ~RSAP TO LSAP;
   -71-
 360    
 361    ASSIGN LSH * LNWP TO LSCAN;
   -72-
 362    
 363    ASSIGN (LSAP * ~LTKI1 + LSTK) * ~LSCAN * ~RSTK * ~RSAP TO LSTK;
   -73-

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 11

 364    
 365    ASSIGN LNWP * ~LDOOR + ~DIPCHK TO LTKO1;
   -74-
 366    
 367    ASSIGN (~RSTK * RSH * ~LTKO7 * ~LTKO8 + RSTK * (~RTKI1 + ~RDOOR)) * LCSLOT TO LTKO2;
   -75-
 368    
 369    ASSIGN DIPCHK * L5SUG * LTKI1 * LTKO1 * (KILL_5 * LNWP * ~LDOOR * RNWP * ~RDOOR + ~KILL_5) 

TO LTKO5;
   -76-
 370    
 371    ASSIGN DIPCHK * (((~RTKI1P * ~RSCAN * ~LSTK + ~RNWP + RDOOR) + ~RSHP * ~RSCAN) + RTKI6) * ~

RSTK TO LTKO6;
   -77-
 372    
 373    ASSIGN (RTKI7 * RUGER + RTKI8 * RUYER * RLYER) * LCSLOT TO LTKO7;
   -78-
 374    
 375    ASSIGN (RTKI7 * ~RUGER + RTKI8 * ~RLYER + RTKI2) * RUYER * LCSLOT TO LTKO8;
   -79-
 376    
 377    ASSIGN DIPCHK * RMITMR * LTKO1 * (POP * ~LOL_POR * POL_LOR + ~LAMPOUT * ~POL_LOR * LOL_POR)

 TO LTKOM;
   -80-
 378    
 379    ASSIGN LTO TO LTOP;
   -81-
 380    
 381    ASSIGN DIPCHK * LWL_ON * ~LNWP * LDOOR * (((LLSTMR + LLLTMR) + LTOP * OTS) + LWLOUT) TO LWL

OUT;
   -82-
 382    
 383    ASSIGN (~RTKI1 * RTKATMR + ~LTKI1 * LTKATMR) * (~LTOP * ~RTOP + OTS) TO OTS;
   -83-
 384    
 385    ASSIGN RC1SW * RC5SW + RC1SW * LTKI1 + RC5SW * LTKI5 TO R5SUG;
   -84-
 386    
 387    ASSIGN LTKI1 * LNWP * ~STEADY_LIT TO R_CROSS_OUT;
   -85-
 388    
 389    ASSIGN DIPCHK * ~RSTK * ~RTKO6 * RNWP * ~RDOOR TO RCSLOT;
   -86-
 390    

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 12

 391    ASSIGN ~LTKI1 + ~LNWP + LDOOR + (~R_CROSS_IN * PEER_COM.ENABLED * PEER_COM.X_LIGHT.ENABLED)

 + STEADY_LIT + LMP_TST TO RE;
   -87-
 392    
 393    ASSIGN (LSH + LSTK) * RSH TO RLA;
   -88-
 394    
 395    ASSIGN RWL_ON * ~RNWP * RDOOR * ~RLA * ~RWLOUT TO RLLTMR;
   -89-
 396    
 397    ASSIGN RE * RLRER TO RLRE;
   -90-
 398    
 399    ASSIGN ~RLYER * RLRELO TO RLRER;
   -91-
 400    
 401    ASSIGN RE * RLYER TO RLYE;
   -92-
 402    
 403    ASSIGN RTKI8 * RLYELO * RUYER * RSSLOT TO RLYER;
   -93-
 404    
 405    ASSIGN RWL_ON * ~RNWP * RDOOR * RLA * ~RWLOUT TO RLSTMR;
   -94-
 406    
 407    ASSIGN (RTKI1 + RMITMR) * (~MCODE_RIGHT + RTKIM) TO RMITMR;
   -95-
 408    
 409    ASSIGN (AFPT * RSH * ~LTKI1 + RSAP * ~AFDTMR) * ~RSTK * ~LSTK * ~LSAP TO RSAP;
   -96-
 410    
 411    ASSIGN RSH * RNWP TO RSCAN;
   -97-
 412    
 413    ASSIGN DIPCHK * RNWP * ~RDOOR * RSH TO RSSLOT;
   -98-
 414    
 415    ASSIGN (RSAP * ~RTKI1 + RSTK) * ~RSCAN * ~LSTK * ~LSAP TO RSTK;
   -99-
 416    
 417    ASSIGN RNWP * ~RDOOR + ~DIPCHK TO RTKO1;
   -100-
 418    
 419    ASSIGN (LTKI2 * LNWP * ~LDOOR) * RCSLOT TO RTKO2;
   -101-
 420    
 421    ASSIGN DIPCHK * R5SUG * RTKI1 * RTKO1 * (KILL_5 * LNWP * ~LDOOR * RNWP * ~RDOOR + ~KILL_5) 

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 13


TO RTKO5;
   -102-
 422    
 423    ASSIGN DIPCHK * (((~LTKI1P * ~LSCAN * ~RSTK + ~LNWP + LDOOR) + ~LSHP * ~LSCAN) + LTKI6) * ~

LSTK TO RTKO6;
   -103-
 424    
 425    ASSIGN (LTKI7 * LNWP * ~LDOOR) * RCSLOT TO RTKO7;
   -104-
 426    
 427    ASSIGN DIPCHK * LMITMR * RTKO1 * (POP * LOL_POR * ~POL_LOR + ~LAMPOUT * POL_LOR * ~LOL_POR)

 TO RTKOM;
   -105-
 428    
 429    ASSIGN RTO TO RTOP;
   -106-
 430    
 431    ASSIGN RE * RUGER TO RUGE;
   -107-
 432    
 433    ASSIGN RTKI7 * RUGELO * RSSLOT TO RUGER;
   -108-
 434    
 435    ASSIGN RE * RURER TO RURE;
   -109-
 436    
 437    ASSIGN ~RUGER * ~RUYER * RURELO TO RURER;
   -110-
 438    
 439    ASSIGN RE * RUYER TO RUYE;
   -111-
 440    
 441    ASSIGN (RTKI7 * ~RUGER + RTKI8 + RTKI2) * RUYELO * RSSLOT TO RUYER;
   -112-
 442    
 443    ASSIGN DIPCHK * RWL_ON * ~RNWP * RDOOR * (((RLSTMR + RLLTMR) + RTOP * OTS) + RWLOUT) TO RWL

OUT;
   -113-
 444    
 445    ASSIGN STEADY_LIGHT * POP TO STEADY_LIT;
   -114-
 446    
 447    ASSIGN PO TO POP;
   -115-

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 14

 448    
 449    ASSIGN ~LTKI1 TO LTKI1TMR;
   -116-
 450    
 451    ASSIGN ~LTKI1TMR TO LTKI1P;
   -117-
 452    
 453    ASSIGN ~RTKI1TMR TO RTKI1P;
   -118-
 454    
 455    ASSIGN ~RTKI1 TO RTKI1TMR;
   -119-
 456    
 457    //Light out relays
 458    
 459    ASSIGN ~RUGELOI * CPS.STATUS * SIG.ENABLED TO RUGELO;
   -120-
 460    
 461    ASSIGN ~RUYELOI * CPS.STATUS * SIG.ENABLED TO RUYELO;
   -121-
 462    
 463    ASSIGN ~RURELOI * CPS.STATUS * SIG.ENABLED TO RURELO;
   -122-
 464    
 465    ASSIGN ~RLYELOI * CPS.STATUS * SIG.ENABLED TO RLYELO;
   -123-
 466    
 467    ASSIGN ~RLRELOI * CPS.STATUS * SIG.ENABLED TO RLRELO;
   -124-
 468    
 469    //Equivalent Track Logic
 470    
 471    ASSIGN LTKO1								TO ECODE.L.CODE.1.OUT;
   -125-
 472    
 473    ASSIGN LTKO1 * LTKO2							TO ECODE.L.CODE.2.OUT;
   -126-
 474    
 475    ASSIGN LTKO1 * LTKO5							TO ECODE.L.CODE.5.OUT;
   -127-
 476    
 477    ASSIGN LTKO1 * LTKO6							TO ECODE.L.CODE.6.OUT;
   -128-
 478    
 479    ASSIGN LTKO1 * LTKO7							TO ECODE.L.CODE.7.OUT;
   -129-
 480    
 481    ASSIGN LTKO1 * LTKO8							TO ECODE.L.CODE.8.OUT;

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 15

   -130-
 482    
 483    ASSIGN LTKO1 * LTKOM							TO ECODE.L.CODE.M.OUT;
   -131-
 484    
 485    ASSIGN RTKO1								TO ECODE.R.CODE.1.OUT;
   -132-
 486    
 487    ASSIGN RTKO1 * RTKO2							TO ECODE.R.CODE.2.OUT;
   -133-
 488    
 489    ASSIGN RTKO1 * RTKO5							TO ECODE.R.CODE.5.OUT;
   -134-
 490    
 491    ASSIGN RTKO1 * RTKO6							TO ECODE.R.CODE.6.OUT;
   -135-
 492    
 493    ASSIGN RTKO1 * RTKO7							TO ECODE.R.CODE.7.OUT;
   -136-
 494    
 495    ASSIGN RTKO1 * RTKOM						TO ECODE.R.CODE.M.OUT;
   -137-
 496    
 497    ASSIGN ~LTKO6								TO ECODE.L.VALIDATE.CODE;
   -138-
 498    
 499    ASSIGN ~RTKO6								TO ECODE.R.VALIDATE.CODE;
   -139-
 500    
 501    END LOGIC
 502    
 503    END PROGRAM
 504    



 *** Created on Thu Jan 31 15:17:10 2013
 by MICROLOK II Compiler Version 8.50 (N800102-0001)


 *** Application Image Summary:

    Target: Microlok II
    Application Image CRC: b7ed
    Application Image Checksum: 3138


 *** I/O Board Address Jumper (Switch) Settings:

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 16


    VIO1:  IN8.OUT8
      Address: 0,  Class: VPA8

      1 2 3 4 5 6
                1 
      0 0 0 0 0   
      ---OPEN----

    SIG:  LAMP16
      Address: 0,  Class: VPA16

      1 2 3 4 5 6
                  
      0 0 0 0 0 0 
      ---OPEN----

    ECODE:  ECODE.TRACK
      Address: 32,  Class: VPA8

      1 2 3 4 5 6
        1       1 
      0   0 0 0   
      ---OPEN----


 *** Unassigned User-Defined Output Bits:

None Found


 *** Unused User-Defined Input Bits:

None Found


 *** Unused or Unassigned Internal Bits:

None Found


 *** Bit Usage Summary:

                CONTACT      # TIMES USED
                 TYPE        AS A TRIGGER
     BIT     ------------- -----------------    #
   # NAME     FRONT  BACK  BLOCK TABLE  CODE  ASGNS  TARG  VITALITY
   1 RESET        0     0      0     0     0     - SYSTEM  VITAL  OUT

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 17

   2 QUICK.RESET 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
   3 KILL         0     0      0     0     0     - SYSTEM  VITAL  OUT
   4 CPS.ENABLE   0     4      0     0     0     1 SYSTEM  VITAL  OUT
   5 CPS.STATUS   5     0      0     0     0     - SYSTEM  VITAL   IN
   6 USER.RESTRICTED 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
   7 ERROR.RESTRICTED 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
   8 CONFIGURE.ERROR 
                  0     1      0     0     0     - SYSTEM  VITAL   IN
   9 LAMP.RESET.OPTION 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
  10 CLOCK.FREEZE 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  11 CLOCK.SET    0     0      0     0     0     - SYSTEM  VITAL  OUT
  12 PEER.CLOCK.SET 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  13 PCMCIA.INSTALLED 
                  0     0      0     0     0     - SYSTEM    NON   IN
  14 LOG.OK       0     0      0     0     0     - SYSTEM    NON   IN
  15 BATTERY.HEALTH 
                  0     0      0     0     0     - SYSTEM    NON   IN
  16 LOG.LARGE    0     0      0     0     0     - SYSTEM  VITAL   IN
  17 LOG.FULL     0     0      0     0     0     - SYSTEM  VITAL   IN
  18 AUX1.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  19 AUX2.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  20 AUX3.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  21 AUX4.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  22 AUX5.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  23 AUX6.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  24 AUX7.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  25 AUX8.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  26 AUX9.INPUT   0     0      0     0     0     - SYSTEM    NON   IN
  27 AUX10.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  28 AUX11.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  29 AUX12.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  30 AUX13.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  31 AUX14.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  32 AUX15.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  33 AUX16.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 18

  34 AUX17.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  35 AUX18.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  36 AUX19.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  37 AUX20.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  38 AUX21.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  39 AUX22.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  40 AUX23.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  41 AUX24.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  42 AUX25.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  43 AUX26.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  44 AUX27.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  45 AUX28.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  46 AUX29.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  47 AUX30.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  48 AUX31.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  49 AUX32.INPUT 
                  0     0      0     0     0     - SYSTEM    NON   IN
  50 LED.1        0     0      0     0     0     1 SYSTEM    NON  OUT
  51 LED.2        0     0      0     0     0     1 SYSTEM    NON  OUT
  52 LED.3        0     0      0     0     0     1 SYSTEM    NON  OUT
  53 LED.4        0     0      0     0     0     1 SYSTEM    NON  OUT
  54 LED.5        0     0      0     0     0     1 SYSTEM    NON  OUT
  55 LED.6        0     0      0     0     0     1 SYSTEM    NON  OUT
  56 LED.7        0     0      0     0     0     1 SYSTEM    NON  OUT
  57 LED.8        0     0      0     0     0     1 SYSTEM    NON  OUT
  58 ALARM.1      0     0      0     0     0     1 SYSTEM    NON  OUT
  59 ALARM.2      0     0      0     0     0     1 SYSTEM    NON  OUT
  60 CPS.RESET    0     0      0     0     0     1 SYSTEM  VITAL  OUT
  61 [unused bit 2] 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  62 [unused bit 3] 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  63 [unused bit 4] 

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 19

                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  64 [unused bit 5] 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
  65 VIO1.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
  66 VIO1.Selective.Shutdown 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
  67 VIO1.Error   0     0      0     0     0     - SYSTEM  VITAL   IN
  68 RWLOUT       1     2      0     0     0     1   ASGN  VITAL  OUT
  69 LWLOUT       1     2      0     0     0     1   ASGN  VITAL  OUT
  76 RNWPI        1     0      0     0     0     -      -  VITAL   IN
  77 RDOOR        4     6      0     0     0     -      -  VITAL   IN
  78 LTO          1     0      0     0     0     -      -  VITAL   IN
  79 LMP_TST      1     0      0     0     0     -      -  VITAL   IN
  80 LNWPI        1     0      0     0     0     -      -  VITAL   IN
  81 LDOOR        5     6      0     0     0     -      -  VITAL   IN
  82 RTO          1     0      0     0     0     -      -  VITAL   IN
  83 PO           1     0      0     0     0     -      -  VITAL   IN
  84 SIG.Enabled 
                  5     0      0     0     0     - SYSTEM  VITAL   IN
  85 SIG.Selective.Shutdown 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
  94 RUGE         0     0      0     0     0     1   ASGN  VITAL  OUT
  95 RUYE         0     0      0     0     0     1   ASGN  VITAL  OUT
  96 RURE         0     0      0     0     0     1   ASGN  VITAL  OUT
  98 RLYE         0     0      0     0     0     1   ASGN  VITAL  OUT
  99 RLRE         0     0      0     0     0     1   ASGN  VITAL  OUT
 110 RUGELOI      0     1      0     0     0     -      -  VITAL   IN
 111 RUYELOI      0     1      0     0     0     -      -  VITAL   IN
 112 RURELOI      0     1      0     0     0     -      -  VITAL   IN
 114 RLYELOI      0     1      0     0     0     -      -  VITAL   IN
 115 RLRELOI      0     1      0     0     0     -      -  VITAL   IN
 118 ECODE.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 119 ECODE.Selective.Shutdown 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 120 ECODE.L.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 121 ECODE.L.Adjust.Enable 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 122 ECODE.L.CodeM.Support.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 123 ECODE.L.Track.Failed 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 124 ECODE.L.Code.1.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 125 ECODE.L.Code.8.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 20

 126 ECODE.L.Code.9.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 127 ECODE.L.Code.2.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 128 ECODE.L.Code.3.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 129 ECODE.L.Code.4.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 130 ECODE.L.Code.7.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 131 ECODE.L.Code.6.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 132 ECODE.L.Code.5.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 133 ECODE.L.Code.M.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 134 ECODE.L.Validate.Code 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 135 ECODE.L.Spare.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 136 ECODE.L.Code.1.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 137 ECODE.L.Code.8.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 138 ECODE.L.Code.9.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 139 ECODE.L.Code.2.In 
                  2     0      0     0     0     - SYSTEM  VITAL   IN
 140 ECODE.L.Code.3.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 141 ECODE.L.Code.4.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 142 ECODE.L.Code.7.In 
                  2     0      0     0     0     - SYSTEM  VITAL   IN
 143 ECODE.L.Code.6.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 144 ECODE.L.Code.5.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 145 ECODE.L.Code.M.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 146 ECODE.L.Spare.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 147 ECODE.L.NV.QuickShunt 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 148 ECODE.L.Code.Valid 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 149 ECODE.L.SPARE.2 
                  0     0      0     0     0     - SYSTEM  VITAL   IN

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 21

 150 ECODE.R.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 151 ECODE.R.Adjust.Enable 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 152 ECODE.R.CodeM.Support.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 153 ECODE.R.Track.Failed 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 154 ECODE.R.Code.1.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 155 ECODE.R.Code.8.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 156 ECODE.R.Code.9.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 157 ECODE.R.Code.2.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 158 ECODE.R.Code.3.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 159 ECODE.R.Code.4.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 160 ECODE.R.Code.7.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 161 ECODE.R.Code.6.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 162 ECODE.R.Code.5.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 163 ECODE.R.Code.M.Out 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 164 ECODE.R.Validate.Code 
                  0     0      0     0     0     1 SYSTEM  VITAL  OUT
 165 ECODE.R.Spare.Out 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 166 ECODE.R.Code.1.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 167 ECODE.R.Code.8.In 
                  2     0      0     0     0     - SYSTEM  VITAL   IN
 168 ECODE.R.Code.9.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 169 ECODE.R.Code.2.In 
                  2     0      0     0     0     - SYSTEM  VITAL   IN
 170 ECODE.R.Code.3.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 171 ECODE.R.Code.4.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 172 ECODE.R.Code.7.In 
                  2     0      0     0     0     - SYSTEM  VITAL   IN
 173 ECODE.R.Code.6.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 22

 174 ECODE.R.Code.5.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 175 ECODE.R.Code.M.In 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 176 ECODE.R.Spare.In 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 177 ECODE.R.NV.QuickShunt 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 178 ECODE.R.Code.Valid 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 179 ECODE.R.Spare.2 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 180 PEER_COM.Enabled 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 181 PEER_COM.Disable 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 182 PEER_COM.X_LIGHT.Enabled 
                  1     0      0     0     0     - SYSTEM  VITAL   IN
 183 PEER_COM.X_LIGHT.Status 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 184 PEER_COM.X_LIGHT.Inputs.Received 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 185 PEER_COM.X_LIGHT.Disable 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 186 PEER_COM.DEBUG.PORT.Enabled 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 187 PEER_COM.DEBUG.PORT.Status 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 188 PEER_COM.DEBUG.PORT.Inputs.Received 
                  0     0      0     0     0     - SYSTEM  VITAL   IN
 189 PEER_COM.DEBUG.PORT.Disable 
                  0     0      0     0     0     - SYSTEM  VITAL  OUT
 190 R_CROSS_OUT 
                  0     0      0     0     0     1   ASGN  VITAL  OUT
 191 R_CROSS_IN   0     1      0     0     0     -      -  VITAL   IN
 193 ID1          1     1      0     0     0     - CONFIG  VITAL     
 194 ID2          1     1      0     0     0     - CONFIG  VITAL     
 195 ID3          1     1      0     0     0     - CONFIG  VITAL     
 196 ID4          1     1      0     0     0     - CONFIG  VITAL     
 197 ID5          1     1      0     0     0     - CONFIG  VITAL     
 198 ID6          1     1      0     0     0     - CONFIG  VITAL     
 199 ID7          1     1      0     0     0     - CONFIG  VITAL     
 200 ID8          1     1      0     0     0     - CONFIG  VITAL     
 201 SW1          1     1      0     0     0     - CONFIG  VITAL     
 202 SW2          1     1      0     0     0     - CONFIG  VITAL     
 203 SW3          1     1      0     0     0     - CONFIG  VITAL     
 204 SW4          1     1      0     0     0     - CONFIG  VITAL     
 205 SW5          1     1      0     0     0     - CONFIG  VITAL     

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 23

 206 SW6          1     1      0     0     0     - CONFIG  VITAL     
 207 SW7          1     1      0     0     0     - CONFIG  VITAL     
 208 SW8          1     1      0     0     0     - CONFIG  VITAL     
 209 LOL_POR      2     2      0     0     0     - CONFIG  VITAL     
 210 POL_LOR      2     2      0     0     0     - CONFIG  VITAL     
 211 MCODE_LEFT   0     1      0     0     0     - CONFIG  VITAL     
 212 MCODE_RIGHT 
                  0     1      0     0     0     - CONFIG  VITAL     
 213 LWL_ON       3     0      0     0     0     - CONFIG  VITAL     
 214 RWL_ON       3     0      0     0     0     - CONFIG  VITAL     
 215 STEADY_LIGHT 
                  1     0      0     0     0     - CONFIG  VITAL     
 216 KILL_5       2     2      0     0     0     - CONFIG  VITAL     
 217 LC1SW        2     0      0     0     0     - CONFIG  VITAL     
 218 LC5SW        2     0      0     0     0     - CONFIG  VITAL     
 219 RC1SW        2     0      0     0     0     - CONFIG  VITAL     
 220 RC5SW        2     0      0     0     0     - CONFIG  VITAL     
 221 LSTK         3     6      0     0     0     1   ASGN  VITAL  INT
 222 LTKO1        9     0      0     0     0     1   ASGN  VITAL  INT
 223 LTKO2        1     0      0     0     0     1   ASGN  VITAL  INT
 224 LTKO5        1     0      0     0     0     1   ASGN  VITAL  INT
 225 LTKO6        1     2      0     0     0     1   ASGN  VITAL  INT
 226 LTKO7        1     1      0     0     0     1   ASGN  VITAL  INT
 227 LTKO8        1     1      0     0     0     1   ASGN  VITAL  INT
 228 LTKOM        1     0      0     0     0     1   ASGN  VITAL  INT
 229 RSTK         4     7      0     0     0     1   ASGN  VITAL  INT
 230 RTKO1        8     0      0     0     0     1   ASGN  VITAL  INT
 231 RTKO2        1     0      0     0     0     1   ASGN  VITAL  INT
 232 RTKO5        1     0      0     0     0     1   ASGN  VITAL  INT
 233 RTKO6        1     2      0     0     0     1   ASGN  VITAL  INT
 234 RTKO7        1     0      0     0     0     1   ASGN  VITAL  INT
 235 RTKOM        1     0      0     0     0     1   ASGN  VITAL  INT
 236 LLOSTMR      7     0      0     0     0     1   ASGN  VITAL  INT
 237 RLOSTMR      8     0      0     0     0     1   ASGN  VITAL  INT
 238 LNWP         8     5      0     0     0     1   ASGN  VITAL  INT
 239 RNWP         6     4      0     0     0     1   ASGN  VITAL  INT
 240 LTOP         1     1      0     0     0     1   ASGN  VITAL  INT
 241 RTOP         1     1      0     0     0     1   ASGN  VITAL  INT
 242 RUGELO       1     1      0     0     0     1   ASGN  VITAL  INT
 243 RUYELO       1     1      0     0     0     1   ASGN  VITAL  INT
 244 RURELO       1     1      0     0     0     1   ASGN  VITAL  INT
 245 RLYELO       1     1      0     0     0     1   ASGN  VITAL  INT
 246 RLRELO       1     1      0     0     0     1   ASGN  VITAL  INT
 247 RUGER        2     3      0     0     0     1   ASGN  VITAL  INT
 248 RUYER        4     1      0     0     0     1   ASGN  VITAL  INT
 249 RURER        1     0      0     0     0     1   ASGN  VITAL  INT
 250 RLYER        2     2      0     0     0     1   ASGN  VITAL  INT
 251 RLRER        1     0      0     0     0     1   ASGN  VITAL  INT

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 24

 252 RE           5     0      0     0     0     1   ASGN  VITAL  INT
 253 LSCAN        0     3      0     0     0     1   ASGN  VITAL  INT
 254 RSCAN        0     3      0     0     0     1   ASGN  VITAL  INT
 255 LCSLOT       3     0      0     0     0     1   ASGN  VITAL  INT
 256 RCSLOT       2     0      0     0     0     1   ASGN  VITAL  INT
 257 RSSLOT       3     0      0     0     0     1   ASGN  VITAL  INT
 258 LSAP         5     2      0     0     0     1   ASGN  VITAL  INT
 259 RSAP         5     2      0     0     0     1   ASGN  VITAL  INT
 260 LLA          1     1      0     0     0     1   ASGN  VITAL  INT
 261 RLA          1     1      0     0     0     1   ASGN  VITAL  INT
 262 POP          3     0      0     0     0     1   ASGN  VITAL  INT
 263 OTS          3     0      0     0     0     1   ASGN  VITAL  INT
 264 L5SUG        1     0      0     0     0     1   ASGN  VITAL  INT
 265 R5SUG        1     0      0     0     0     1   ASGN  VITAL  INT
 266 FLASH        0     4      0     0     0     1   ASGN  VITAL  INT
 267 LTKI1        4     7      0     0     0     1   ASGN  VITAL  INT
 268 LTKI1P       0     1      0     0     0     1   ASGN  VITAL  INT
 269 LTKI2        1     0      0     0     0     1   ASGN  VITAL  INT
 270 LTKI5        1     0      0     0     0     1   ASGN  VITAL  INT
 271 LTKI6        2     0      0     0     0     1   ASGN  VITAL  INT
 272 LTKI7        1     0      0     0     0     1   ASGN  VITAL  INT
 273 LTKIM        1     0      0     0     0     1   ASGN  VITAL  INT
 274 LSH          6     2      0     0     0     1   ASGN  VITAL  INT
 275 LSHP         0     1      0     0     0     1   ASGN  VITAL  INT
 276 RTKI1        3     7      0     0     0     1   ASGN  VITAL  INT
 277 RTKI1P       0     1      0     0     0     1   ASGN  VITAL  INT
 278 RTKI2        2     0      0     0     0     1   ASGN  VITAL  INT
 279 RTKI5        1     0      0     0     0     1   ASGN  VITAL  INT
 280 RTKI6        2     0      0     0     0     1   ASGN  VITAL  INT
 281 RTKI7        4     0      0     0     0     1   ASGN  VITAL  INT
 282 RTKI8        4     0      0     0     0     1   ASGN  VITAL  INT
 283 RTKIM        1     0      0     0     0     1   ASGN  VITAL  INT
 284 RSH          8     2      0     0     0     1   ASGN  VITAL  INT
 285 RSHP         0     1      0     0     0     1   ASGN  VITAL  INT
 286 DIPCHK      12     2      0     0     0     1   ASGN  VITAL  INT
 287 DIP1         1     0      0     0     0     1   ASGN  VITAL  INT
 288 DIP2         1     0      0     0     0     1   ASGN  VITAL  INT
 289 AFPT         2     1      0     0     0     1   ASGN  VITAL  INT
 290 STEADY_LIT   1     1      0     0     0     1   ASGN  VITAL  INT
 291 LampOut      0     2      0     0     0     1   ASGN  VITAL  INT
 292 LTKATMR      1     0      0     0     0     1   ASGN  VITAL  INT
 293 RTKATMR      1     0      0     0     0     1   ASGN  VITAL  INT
 294 LSHTMR       0     1      0     0     0     1   ASGN  VITAL  INT
 295 RSHTMR       0     1      0     0     0     1   ASGN  VITAL  INT
 296 LTKI1TMR     0     1      0     0     0     1   ASGN  VITAL  INT
 297 RTKI1TMR     0     1      0     0     0     1   ASGN  VITAL  INT
 298 AFDTMR       0     2      0     0     0     1   ASGN  VITAL  INT
 299 LLLTMR       1     0      0     0     0     1   ASGN  VITAL  INT

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 25

 300 RLLTMR       1     0      0     0     0     1   ASGN  VITAL  INT
 301 LLSTMR       1     0      0     0     0     1   ASGN  VITAL  INT
 302 RLSTMR       1     0      0     0     0     1   ASGN  VITAL  INT
 303 LMITMR       2     0      0     0     0     1   ASGN  VITAL  INT
 304 RMITMR       2     0      0     0     0     1   ASGN  VITAL  INT
 305 CPS_SP       1     0      0     0     0     1   ASGN  VITAL  INT
 306 RTDBEEP      0     1      0     0     0     1  NASGN    NON  INT
 307 LTDBEEP      0     1      0     0     0     1  NASGN    NON  INT
 308 RTDSTK       3     0      0     0     0     1  NASGN    NON  INT
 309 LTDSTK       3     0      0     0     0     1  NASGN    NON  INT


 *** Numeric Usage Summary:

   # NAME                     MINIMUM    MAXIMUM      ERROR    INITIAL EVAL  TARGET  VITAL
 310 CLOCK.MONTH          -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 311 CLOCK.DAY            -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 312 CLOCK.YEAR           -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 313 CLOCK.HOUR           -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 314 CLOCK.MINUTE         -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 315 CLOCK.SECOND         -2147483648 2147483647          0          0    -  SYSTEM  VITAL  OUT
 316 APP.CRC              -2147483648 2147483647          0          0    -  SYSTEM  VITAL   IN
 317 APP.VERSION          -2147483648 2147483647          0          0    -  SYSTEM  VITAL   IN
 318 EXEC.CRC             -2147483648 2147483647          0          0    -  SYSTEM  VITAL   IN
 319 SYSTEM.LOAD          -2147483648 2147483647          0          0    -  SYSTEM  VITAL   IN
 320 CONFIG.CRC           -2147483648 2147483647          0          0    -  SYSTEM  VITAL   IN


 *** Board Summary:

    VIO1:  IN8.OUT8
      VIO1.Enabled:  1 (Vital Adjustable)
      VIO1.Selective.Shutdown:  0 (Fixed)

    SIG:  LAMP16
      SIG.Enabled:  1 (Vital Adjustable)
      SIG.Selective.Shutdown:  0 (Fixed)
      Lamp0.Wattage:  0 (Fixed)
      Lamp1.Wattage:  0 (Fixed)
      Lamp2.Wattage:  0 (Fixed)
      Lamp3.Wattage:  0 (Fixed)
      Lamp4.Wattage:  0 (Fixed)
      Lamp5.Wattage:  0 (Fixed)
      Lamp6.Wattage:  0 (Fixed)
      Lamp7.Wattage:  0 (Fixed)
      Lamp8.Wattage:  18 (Vital Adjustable)
      Lamp9.Wattage:  18 (Vital Adjustable)
      Lamp10.Wattage:  18 (Vital Adjustable)

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 26

      Lamp11.Wattage:  0 (Fixed)
      Lamp12.Wattage:  18 (Vital Adjustable)
      Lamp13.Wattage:  18 (Vital Adjustable)
      Lamp14.Wattage:  0 (Fixed)
      Lamp15.Wattage:  0 (Fixed)
      Lamp0.Mode:  0 (Fixed)
      Lamp1.Mode:  0 (Fixed)
      Lamp2.Mode:  0 (Fixed)
      Lamp3.Mode:  0 (Fixed)
      Lamp4.Mode:  0 (Fixed)
      Lamp5.Mode:  0 (Fixed)
      Lamp6.Mode:  0 (Fixed)
      Lamp7.Mode:  0 (Fixed)
      Lamp8.Mode:  1 (Vital Adjustable)
      Lamp9.Mode:  1 (Vital Adjustable)
      Lamp10.Mode:  1 (Vital Adjustable)
      Lamp11.Mode:  0 (Fixed)
      Lamp12.Mode:  1 (Vital Adjustable)
      Lamp13.Mode:  1 (Vital Adjustable)
      Lamp14.Mode:  0 (Fixed)
      Lamp15.Mode:  0 (Fixed)

    ECODE:  ECODE.TRACK
      ECODE.Enabled:  1 (Vital Adjustable)
      ECODE.Selective.Shutdown:  0 (Fixed)
      ECODE.L.Enabled:  1 (Vital Adjustable)
      ECODE.L.Feed.Voltage:  61 (Fixed)
      ECODE.L.Reference.Current:  50 (Fixed)
      ECODE.L.Code5.Support:  3 (Vital Adjustable)
      ECODE.L.CodeM.Support.Enabled:  1 (Vital Adjustable)
      ECODE.L.Code.Group.Select:  0 (Fixed)
      ECODE.R.Enabled:  1 (Vital Adjustable)
      ECODE.R.Feed.Voltage:  61 (Fixed)
      ECODE.R.Reference.Current:  50 (Fixed)
      ECODE.R.Code5.Support:  3 (Vital Adjustable)
      ECODE.R.CodeM.Support.Enabled:  1 (Vital Adjustable)
      ECODE.R.Code.Group.Select:  0 (Fixed)


 *** Link Summary:

    PEER_COM:  MII Peer
      PEER_COM.Enabled:  1 (Vital Adjustable)
      Point.Point:  1 (Vital Adjustable)
      Port:  3 (Vital Adjustable)
      BAUD:  9600 (Non-vital Adjustable)
      StopBits:  1 (Non-vital Adjustable)
      Parity:  0 (Non-vital Adjustable)

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 27

      Key.On.Delay:  0 (Non-vital Adjustable)
      Key.Off.Delay:  0 (Non-vital Adjustable)
      Debug.Port.Address.Type:  0 (Fixed)
      Debug.Port.Address:  0x0  (Fixed)
      Grant.Delay:  100 (Non-vital Adjustable)
      PEER_COM.X_LIGHT.Enabled:  1 (Vital Adjustable)
      PEER_COM.X_LIGHT.TIME.STAMP:  1 (Vital Adjustable)
      PEER_COM.X_LIGHT.Station.Address.Type:  1 (Fixed)
      PEER_COM.X_LIGHT.Station.Address:  589824 (Vital Adjustable)
      PEER_COM.X_LIGHT.PEER.ADDRESS:  0 (Vital Adjustable)
      PEER_COM.X_LIGHT.Stale.Data.Timeout:  10000 (Vital Adjustable)
      PEER_COM.X_LIGHT.ACK.TIMEOUT:  4000 (Vital Adjustable)
      PEER_COM.X_LIGHT.HEARTBEAT.INTERVAL:  4000 (Vital Adjustable)
      PEER_COM.X_LIGHT.INDICATION.UPDATE.CYCLE:  10 (Vital Adjustable)
      PEER_COM.X_LIGHT.CLOCK.MASTER:  0 (Vital Adjustable)
      PEER_COM.DEBUG.PORT.Enabled:  0 (Vital Adjustable)
      PEER_COM.DEBUG.PORT.TIME.STAMP:  0 (Fixed)
      PEER_COM.DEBUG.PORT.Station.Address.Type:  1 (Fixed)
      PEER_COM.DEBUG.PORT.Station.Address:  268435456 (Vital Adjustable)
      PEER_COM.DEBUG.PORT.PEER.ADDRESS:  0 (Vital Adjustable)
      PEER_COM.DEBUG.PORT.Stale.Data.Timeout:  180000 (Fixed)
      PEER_COM.DEBUG.PORT.ACK.TIMEOUT:  24000 (Fixed)
      PEER_COM.DEBUG.PORT.HEARTBEAT.INTERVAL:  24000 (Fixed)
      PEER_COM.DEBUG.PORT.INDICATION.UPDATE.CYCLE:  10 (Fixed)
      PEER_COM.DEBUG.PORT.CLOCK.MASTER:  0 (Fixed)


 *** System Level Configuration Parameters: 

     ApplicationChecksum:  0 (Vital Adjustable)
     ExecutiveChecksum:  0 (Vital Adjustable)
     Executive.Version:  0 (Fixed)
     Application.Version:  2 (Fixed)
     Event.Threshold.1:  1 (Non-vital Adjustable)
     Event.Threshold.2:  1 (Non-vital Adjustable)
     Event.Threshold.3:  1 (Non-vital Adjustable)
     Event.Threshold.4:  1 (Non-vital Adjustable)
     Event.Threshold.5:  1 (Non-vital Adjustable)
     Event.Threshold.6:  1 (Non-vital Adjustable)
     Event.Threshold.7:  1 (Non-vital Adjustable)
     Event.Threshold.8:  1 (Non-vital Adjustable)
     Event.Threshold.9:  1 (Non-vital Adjustable)
     Event.Threshold.10:  1 (Non-vital Adjustable)
     Event.Threshold.11:  1 (Non-vital Adjustable)
     Event.Threshold.12:  1 (Non-vital Adjustable)
     Event.Threshold.13:  1 (Non-vital Adjustable)
     Event.Threshold.14:  1 (Non-vital Adjustable)
     Event.Threshold.15:  1 (Non-vital Adjustable)

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 28

     Event.Threshold.16:  1 (Non-vital Adjustable)
     Event.Threshold.17:  1 (Non-vital Adjustable)
     Event.Threshold.18:  1 (Non-vital Adjustable)
     Event.Threshold.19:  1 (Non-vital Adjustable)
     Event.Threshold.20:  1 (Non-vital Adjustable)
     Event.Threshold.21:  1 (Non-vital Adjustable)
     Event.Threshold.22:  1 (Non-vital Adjustable)
     Event.Threshold.23:  1 (Non-vital Adjustable)
     Event.Threshold.24:  1 (Non-vital Adjustable)
     Event.Threshold.25:  1 (Non-vital Adjustable)
     Event.Threshold.26:  1 (Non-vital Adjustable)
     Event.Threshold.27:  1 (Non-vital Adjustable)
     Event.Threshold.28:  1 (Non-vital Adjustable)
     Event.Threshold.29:  1 (Non-vital Adjustable)
     Event.Threshold.30:  1 (Non-vital Adjustable)
     Event.Threshold.31:  1 (Non-vital Adjustable)
     Event.Threshold.32:  1 (Non-vital Adjustable)
     Event.Threshold.33:  1 (Non-vital Adjustable)
     Event.Threshold.34:  1 (Non-vital Adjustable)
     Event.Threshold.35:  1 (Non-vital Adjustable)
     Event.Threshold.36:  1 (Non-vital Adjustable)
     Event.Threshold.37:  1 (Non-vital Adjustable)
     Event.Threshold.38:  1 (Non-vital Adjustable)
     Event.Threshold.39:  1 (Non-vital Adjustable)
     Event.Threshold.40:  1 (Non-vital Adjustable)
     Event.Threshold.41:  1 (Non-vital Adjustable)
     Event.Threshold.42:  1 (Non-vital Adjustable)
     Event.Threshold.43:  1 (Non-vital Adjustable)
     Event.Threshold.44:  1 (Non-vital Adjustable)
     Event.Threshold.45:  1 (Non-vital Adjustable)
     Event.Threshold.46:  1 (Non-vital Adjustable)
     Event.Threshold.47:  1 (Non-vital Adjustable)
     Event.Threshold.48:  1 (Non-vital Adjustable)
     Event.Threshold.49:  1 (Non-vital Adjustable)
     Event.Threshold.50:  1 (Non-vital Adjustable)
     Event.Threshold.51:  1 (Non-vital Adjustable)
     Event.Threshold.52:  1 (Non-vital Adjustable)
     Event.Threshold.53:  1 (Non-vital Adjustable)
     Event.Threshold.54:  1 (Non-vital Adjustable)
     Event.Threshold.55:  1 (Non-vital Adjustable)
     Event.Threshold.56:  1 (Non-vital Adjustable)
     Event.Threshold.57:  1 (Non-vital Adjustable)
     Event.Threshold.58:  1 (Non-vital Adjustable)
     Event.Threshold.59:  1 (Non-vital Adjustable)
     Event.Threshold.60:  1 (Non-vital Adjustable)
     Event.Threshold.61:  1 (Non-vital Adjustable)
     Event.Threshold.62:  1 (Non-vital Adjustable)
     Event.Threshold.63:  1 (Non-vital Adjustable)

Union Switch & Signal Inc. MICROLOK II Listing File [Version 8.50] 
Application: INT_7899_R1 compiled on Thu Jan 31 15:17:11 2013
CRC = b7ed  Checksum = 3138  Page: 29

     Event.Threshold.64:  1 (Non-vital Adjustable)
     Logic.Timeout:  2000 (Vital Adjustable)
     Configuration.Compatibility:  0 (Fixed)
     PC.Vital.Config.Date:  0 (Vital Adjustable)
     PC.NV.Config.Date:  0 (Non-vital Adjustable)
     Front.Vital.Config.Date:  0 (Vital Adjustable)
     Front.NV.Config.Date:  0 (Non-vital Adjustable)
     Password:  0 (Vital Adjustable)
     Debug.Port.Address:  1 (Non-vital Adjustable)
     Debug.Port.Baudrate:  9600 (Non-vital Adjustable)
     Delay.Reset:  0 (Vital Adjustable)
