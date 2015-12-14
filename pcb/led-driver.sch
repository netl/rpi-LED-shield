EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:netl
LIBS:rpi_shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AM4874N Q201
U 1 1 566DBEC2
P 3150 1650
F 0 "Q201" H 3250 1450 60  0000 C CNN
F 1 "AM4874N" H 3350 1850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3150 1650 60  0001 C CNN
F 3 "" H 3150 1650 60  0000 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 566DBED0
P 3250 2550
F 0 "#PWR012" H 3250 2300 50  0001 C CNN
F 1 "GND" H 3250 2400 50  0000 C CNN
F 2 "" H 3250 2550 60  0000 C CNN
F 3 "" H 3250 2550 60  0000 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1350 3450 1350
Connection ~ 3250 1350
Connection ~ 3350 1350
$Comp
L CONN_01X01 P201
U 1 1 566DBF4F
P 2850 1250
F 0 "P201" H 2850 1400 50  0000 C CNN
F 1 "CONN_01X01" V 2950 1250 50  0000 C CNN
F 2 "netl:1Pin_big" H 2850 1250 60  0001 C CNN
F 3 "" H 2850 1250 60  0000 C CNN
	1    2850 1250
	-1   0    0    1   
$EndComp
Text Label 6300 1250 0    60   ~ 0
DrainBlue
Text Label 3150 3550 0    60   ~ 0
DrainGreen
Text Label 3150 1250 0    60   ~ 0
DrainRed
$Comp
L R R204
U 1 1 566DE0AB
P 3250 2300
F 0 "R204" V 3330 2300 50  0000 C CNN
F 1 "R" V 3250 2300 50  0000 C CNN
F 2 "netl:SMD_0603" V 3180 2300 30  0001 C CNN
F 3 "" H 3250 2300 30  0000 C CNN
	1    3250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2450 3250 2550
Wire Wire Line
	1800 2050 3350 2050
Connection ~ 3250 2050
Wire Wire Line
	3250 2050 3250 2150
Wire Wire Line
	1800 2050 1800 1800
Connection ~ 3150 2050
$Comp
L GND #PWR013
U 1 1 566DE548
P 2200 2550
F 0 "#PWR013" H 2200 2300 50  0001 C CNN
F 1 "GND" H 2200 2400 50  0000 C CNN
F 2 "" H 2200 2550 60  0000 C CNN
F 3 "" H 2200 2550 60  0000 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
Text GLabel 2200 1000 1    60   Input ~ 0
Vdd
Wire Wire Line
	2200 1000 2200 1300
Wire Wire Line
	2200 2100 2200 2550
$Comp
L LM2902N U201
U 1 1 566DDC60
P 2300 1700
F 0 "U201" H 2350 1900 60  0000 C CNN
F 1 "LM2902N" H 2450 1500 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-14_5.3x6.2mm_Pitch0.65mm" H 2300 1700 60  0001 C CNN
F 3 "" H 2300 1700 60  0000 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1250 3150 1350
Wire Wire Line
	3050 1250 3150 1250
$Comp
L AM4874N Q202
U 1 1 566E4508
P 3150 3950
F 0 "Q202" H 3250 3750 60  0000 C CNN
F 1 "AM4874N" H 3350 4150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3150 3950 60  0001 C CNN
F 3 "" H 3150 3950 60  0000 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 566E450E
P 3250 4850
F 0 "#PWR014" H 3250 4600 50  0001 C CNN
F 1 "GND" H 3250 4700 50  0000 C CNN
F 2 "" H 3250 4850 60  0000 C CNN
F 3 "" H 3250 4850 60  0000 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3650 3450 3650
Connection ~ 3250 3650
Connection ~ 3350 3650
$Comp
L CONN_01X01 P202
U 1 1 566E4519
P 2850 3550
F 0 "P202" H 2850 3700 50  0000 C CNN
F 1 "CONN_01X01" V 2950 3550 50  0000 C CNN
F 2 "netl:1Pin_big" H 2850 3550 60  0001 C CNN
F 3 "" H 2850 3550 60  0000 C CNN
	1    2850 3550
	-1   0    0    1   
$EndComp
$Comp
L R R205
U 1 1 566E452F
P 3250 4600
F 0 "R205" V 3330 4600 50  0000 C CNN
F 1 "R" V 3250 4600 50  0000 C CNN
F 2 "netl:SMD_0603" V 3180 4600 30  0001 C CNN
F 3 "" H 3250 4600 30  0000 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4750 3250 4850
Wire Wire Line
	1800 4350 3350 4350
Connection ~ 3250 4350
Wire Wire Line
	3250 4350 3250 4450
Wire Wire Line
	1800 4350 1800 4100
Connection ~ 3150 4350
$Comp
L GND #PWR015
U 1 1 566E453D
P 2200 4850
F 0 "#PWR015" H 2200 4600 50  0001 C CNN
F 1 "GND" H 2200 4700 50  0000 C CNN
F 2 "" H 2200 4850 60  0000 C CNN
F 3 "" H 2200 4850 60  0000 C CNN
	1    2200 4850
	1    0    0    -1  
$EndComp
Text GLabel 2200 3300 1    60   Input ~ 0
Vdd
Wire Wire Line
	2200 3300 2200 3600
Wire Wire Line
	2200 4400 2200 4850
$Comp
L LM2902N U201
U 2 1 566E455E
P 2300 4000
F 0 "U201" H 2350 4200 60  0000 C CNN
F 1 "LM2902N" H 2450 3800 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-14_5.3x6.2mm_Pitch0.65mm" H 2300 4000 60  0001 C CNN
F 3 "" H 2300 4000 60  0000 C CNN
	2    2300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3550 3150 3650
Wire Wire Line
	3050 3550 3150 3550
$Comp
L AM4874N Q203
U 1 1 566E4786
P 6300 1650
F 0 "Q203" H 6400 1450 60  0000 C CNN
F 1 "AM4874N" H 6500 1850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6300 1650 60  0001 C CNN
F 3 "" H 6300 1650 60  0000 C CNN
	1    6300 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 566E478C
P 6400 2550
F 0 "#PWR016" H 6400 2300 50  0001 C CNN
F 1 "GND" H 6400 2400 50  0000 C CNN
F 2 "" H 6400 2550 60  0000 C CNN
F 3 "" H 6400 2550 60  0000 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1350 6600 1350
Connection ~ 6400 1350
Connection ~ 6500 1350
$Comp
L CONN_01X01 P203
U 1 1 566E4797
P 6000 1250
F 0 "P203" H 6000 1400 50  0000 C CNN
F 1 "CONN_01X01" V 6100 1250 50  0000 C CNN
F 2 "netl:1Pin_big" H 6000 1250 60  0001 C CNN
F 3 "" H 6000 1250 60  0000 C CNN
	1    6000 1250
	-1   0    0    1   
$EndComp
$Comp
L R R206
U 1 1 566E47AD
P 6400 2300
F 0 "R206" V 6480 2300 50  0000 C CNN
F 1 "R" V 6400 2300 50  0000 C CNN
F 2 "netl:SMD_0603" V 6330 2300 30  0001 C CNN
F 3 "" H 6400 2300 30  0000 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2450 6400 2550
Wire Wire Line
	4950 2050 6500 2050
Connection ~ 6400 2050
Wire Wire Line
	6400 2050 6400 2150
Wire Wire Line
	4950 2050 4950 1800
Connection ~ 6300 2050
$Comp
L GND #PWR017
U 1 1 566E47BB
P 5350 2550
F 0 "#PWR017" H 5350 2300 50  0001 C CNN
F 1 "GND" H 5350 2400 50  0000 C CNN
F 2 "" H 5350 2550 60  0000 C CNN
F 3 "" H 5350 2550 60  0000 C CNN
	1    5350 2550
	1    0    0    -1  
$EndComp
Text GLabel 5350 1000 1    60   Input ~ 0
Vdd
Wire Wire Line
	5350 1000 5350 1300
Wire Wire Line
	5350 2100 5350 2550
$Comp
L LM2902N U201
U 3 1 566E47DC
P 5450 1700
F 0 "U201" H 5500 1900 60  0000 C CNN
F 1 "LM2902N" H 5600 1500 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-14_5.3x6.2mm_Pitch0.65mm" H 5450 1700 60  0001 C CNN
F 3 "" H 5450 1700 60  0000 C CNN
	3    5450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1250 6300 1350
Wire Wire Line
	6200 1250 6300 1250
$Comp
L MAX5813 U202
U 1 1 566E84EB
P 4500 6450
F 0 "U202" H 4300 6950 60  0000 C CNN
F 1 "MAX5813" H 4500 6850 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 4300 6500 60  0001 C CNN
F 3 "" H 4300 6500 60  0000 C CNN
	1    4500 6450
	1    0    0    -1  
$EndComp
Text GLabel 3950 6550 0    60   Output ~ 0
B
$Comp
L GND #PWR018
U 1 1 566E84F5
P 3750 6450
F 0 "#PWR018" H 3750 6200 50  0001 C CNN
F 1 "GND" H 3750 6300 50  0000 C CNN
F 2 "" H 3750 6450 60  0000 C CNN
F 3 "" H 3750 6450 60  0000 C CNN
	1    3750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6450 3750 6450
Wire Wire Line
	3950 6250 4050 6250
Wire Wire Line
	4050 6350 3950 6350
Wire Wire Line
	3950 6550 4050 6550
Text GLabel 3950 6750 0    60   Input ~ 0
3v3
Wire Wire Line
	3950 6750 4050 6750
Text GLabel 5150 6150 2    60   Input ~ 0
3v3
Wire Wire Line
	5150 6450 5000 6450
Wire Wire Line
	5000 6550 5150 6550
$Comp
L GND #PWR019
U 1 1 566E8506
P 5150 6750
F 0 "#PWR019" H 5150 6500 50  0001 C CNN
F 1 "GND" H 5150 6600 50  0000 C CNN
F 2 "" H 5150 6750 60  0000 C CNN
F 3 "" H 5150 6750 60  0000 C CNN
	1    5150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6750 5150 6750
Wire Wire Line
	5150 6150 5000 6150
Wire Wire Line
	5000 6150 5000 6350
Connection ~ 5000 6250
Wire Wire Line
	5000 6650 5000 6750
Text HLabel 5150 6450 2    60   BiDi ~ 0
SDA
Text HLabel 5150 6550 2    60   Input ~ 0
SCL
Text GLabel 3950 6350 0    60   Output ~ 0
G
Text GLabel 3950 6250 0    60   Output ~ 0
R
Text GLabel 1700 1600 0    60   Input ~ 0
R
Text GLabel 1700 3900 0    60   Input ~ 0
G
Text GLabel 4850 1600 0    60   Input ~ 0
B
Wire Wire Line
	4850 1600 4950 1600
Wire Wire Line
	1800 3900 1700 3900
Wire Wire Line
	1700 1600 1800 1600
Text Label 6300 3550 0    60   ~ 0
DrainWhite
$Comp
L AM4874N Q204
U 1 1 566E019F
P 6300 3950
F 0 "Q204" H 6400 3750 60  0000 C CNN
F 1 "AM4874N" H 6500 4150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6300 3950 60  0001 C CNN
F 3 "" H 6300 3950 60  0000 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 566E01A5
P 6400 4850
F 0 "#PWR020" H 6400 4600 50  0001 C CNN
F 1 "GND" H 6400 4700 50  0000 C CNN
F 2 "" H 6400 4850 60  0000 C CNN
F 3 "" H 6400 4850 60  0000 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3650 6600 3650
Connection ~ 6400 3650
Connection ~ 6500 3650
$Comp
L CONN_01X01 P204
U 1 1 566E01AE
P 6000 3550
F 0 "P204" H 6000 3700 50  0000 C CNN
F 1 "CONN_01X01" V 6100 3550 50  0000 C CNN
F 2 "netl:1Pin_big" H 6000 3550 60  0001 C CNN
F 3 "" H 6000 3550 60  0000 C CNN
	1    6000 3550
	-1   0    0    1   
$EndComp
$Comp
L R R201
U 1 1 566E01C2
P 6400 4600
F 0 "R201" V 6480 4600 50  0000 C CNN
F 1 "R" V 6400 4600 50  0000 C CNN
F 2 "netl:SMD_0603" V 6330 4600 30  0001 C CNN
F 3 "" H 6400 4600 30  0000 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4750 6400 4850
Wire Wire Line
	4950 4350 6500 4350
Connection ~ 6400 4350
Wire Wire Line
	6400 4350 6400 4450
Wire Wire Line
	4950 4350 4950 4100
Connection ~ 6300 4350
$Comp
L GND #PWR021
U 1 1 566E01CE
P 5350 4850
F 0 "#PWR021" H 5350 4600 50  0001 C CNN
F 1 "GND" H 5350 4700 50  0000 C CNN
F 2 "" H 5350 4850 60  0000 C CNN
F 3 "" H 5350 4850 60  0000 C CNN
	1    5350 4850
	1    0    0    -1  
$EndComp
Text GLabel 5350 3300 1    60   Input ~ 0
Vdd
Wire Wire Line
	5350 3300 5350 3600
Wire Wire Line
	5350 4400 5350 4850
$Comp
L LM2902N U201
U 4 1 566E01D7
P 5450 4000
F 0 "U201" H 5500 4200 60  0000 C CNN
F 1 "LM2902N" H 5600 3800 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-14_5.3x6.2mm_Pitch0.65mm" H 5450 4000 60  0001 C CNN
F 3 "" H 5450 4000 60  0000 C CNN
	4    5450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3550 6300 3650
Wire Wire Line
	6200 3550 6300 3550
Text GLabel 4850 3900 0    60   Input ~ 0
W
Wire Wire Line
	4850 3900 4950 3900
Text GLabel 3950 6650 0    60   Output ~ 0
W
Wire Wire Line
	4050 6650 3950 6650
$Comp
L C C201
U 1 1 566EA826
P 7750 2950
F 0 "C201" H 7775 3050 50  0000 L CNN
F 1 "C" H 7775 2850 50  0000 L CNN
F 2 "netl:SMD_0603" H 7788 2800 30  0001 C CNN
F 3 "" H 7750 2950 60  0000 C CNN
	1    7750 2950
	-1   0    0    1   
$EndComp
Text GLabel 7750 2700 1    60   Input ~ 0
Vdd
$Comp
L GND #PWR022
U 1 1 566EAF9B
P 7750 3200
F 0 "#PWR022" H 7750 2950 50  0001 C CNN
F 1 "GND" H 7750 3050 50  0000 C CNN
F 2 "" H 7750 3200 60  0000 C CNN
F 3 "" H 7750 3200 60  0000 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3100 7750 3200
Wire Wire Line
	7750 2800 7750 2700
$EndSCHEMATC