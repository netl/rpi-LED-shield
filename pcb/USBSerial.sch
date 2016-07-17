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
Sheet 3 4
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
L FT230XS-R Q301
U 1 1 56AD0E00
P 4500 2350
F 0 "Q301" H 4100 2950 60  0000 C CNN
F 1 "FT230XS-R" H 4900 1750 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-16_3.9x4.9mm_Pitch0.635mm" H 4950 2650 60  0001 C CNN
F 3 "" H 4950 2650 60  0000 C CNN
	1    4500 2350
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG P301
U 1 1 56AD0E94
P 2300 2400
F 0 "P301" H 2625 2275 50  0000 C CNN
F 1 "USB_OTG" H 2300 2600 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 2250 2300 60  0001 C CNN
F 3 "" V 2250 2300 60  0000 C CNN
	1    2300 2400
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR302
U 1 1 56AD0F3F
P 2700 3100
F 0 "#PWR302" H 2700 2850 50  0001 C CNN
F 1 "GND" H 2700 2950 50  0000 C CNN
F 2 "" H 2700 3100 60  0000 C CNN
F 3 "" H 2700 3100 60  0000 C CNN
	1    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR301
U 1 1 56AD0F57
P 2200 3100
F 0 "#PWR301" H 2200 2850 50  0001 C CNN
F 1 "GND" H 2200 2950 50  0000 C CNN
F 2 "" H 2200 3100 60  0000 C CNN
F 3 "" H 2200 3100 60  0000 C CNN
	1    2200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2400 3800 2400
Wire Wire Line
	3800 2400 3800 2450
Wire Wire Line
	2600 2300 3800 2300
Wire Wire Line
	3800 2300 3800 2250
Wire Wire Line
	2600 2200 3200 2200
Wire Wire Line
	4600 1500 4600 1650
$Comp
L C C301
U 1 1 56AD1077
P 3600 1750
F 0 "C301" H 3625 1850 50  0000 L CNN
F 1 "100n" H 3625 1650 50  0000 L CNN
F 2 "netl:SMD_0603" H 3638 1600 30  0001 C CNN
F 3 "" H 3600 1750 60  0000 C CNN
	1    3600 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR303
U 1 1 56AD1283
P 3600 2000
F 0 "#PWR303" H 3600 1750 50  0001 C CNN
F 1 "GND" H 3600 1850 50  0000 C CNN
F 2 "" H 3600 2000 60  0000 C CNN
F 3 "" H 3600 2000 60  0000 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Text HLabel 5500 1950 2    60   Output ~ 0
TX
Text HLabel 5500 2050 2    60   Input ~ 0
RX
Wire Wire Line
	5200 1950 5500 1950
Wire Wire Line
	5500 2050 5200 2050
$Comp
L R R301
U 1 1 56AD14F9
P 3550 2750
F 0 "R301" V 3630 2750 50  0000 C CNN
F 1 "10k" V 3550 2750 50  0000 C CNN
F 2 "netl:SMD_0603" V 3480 2750 30  0001 C CNN
F 3 "" H 3550 2750 30  0000 C CNN
	1    3550 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2750 3400 2750
Connection ~ 3200 2200
Wire Wire Line
	3700 2750 3800 2750
$Comp
L GND #PWR305
U 1 1 56AD15C9
P 4600 3100
F 0 "#PWR305" H 4600 2850 50  0001 C CNN
F 1 "GND" H 4600 2950 50  0000 C CNN
F 2 "" H 4600 3100 60  0000 C CNN
F 3 "" H 4600 3100 60  0000 C CNN
	1    4600 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR304
U 1 1 56AD15F7
P 4400 3100
F 0 "#PWR304" H 4400 2850 50  0001 C CNN
F 1 "GND" H 4400 2950 50  0000 C CNN
F 2 "" H 4400 3100 60  0000 C CNN
F 3 "" H 4400 3100 60  0000 C CNN
	1    4400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3100 4400 3050
Wire Wire Line
	4600 3050 4600 3100
$Comp
L R R302
U 1 1 56AD170A
P 5450 2250
F 0 "R302" V 5530 2250 50  0000 C CNN
F 1 "10k" V 5450 2250 50  0000 C CNN
F 2 "netl:SMD_0603" V 5380 2250 30  0001 C CNN
F 3 "" H 5450 2250 30  0000 C CNN
	1    5450 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1650 4400 1300
Wire Wire Line
	3200 1300 6250 1300
Wire Wire Line
	3200 1300 3200 2750
Wire Wire Line
	5800 1300 5800 2250
Wire Wire Line
	5800 2250 5600 2250
Connection ~ 4400 1300
Wire Wire Line
	5200 2250 5300 2250
Text HLabel 6250 1300 2    60   Output ~ 0
5VUSB
Connection ~ 5800 1300
Wire Wire Line
	3600 1900 3600 2000
Wire Wire Line
	3600 1500 3600 1600
Wire Wire Line
	3600 1500 4600 1500
Wire Wire Line
	2600 2600 2700 2600
Wire Wire Line
	2700 2600 2700 3100
Wire Wire Line
	2200 2800 2200 3100
$Comp
L CP C302
U 1 1 570E4572
P 6150 2250
F 0 "C302" H 6175 2350 50  0000 L CNN
F 1 "CP" H 6175 2150 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x5.4" H 6188 2100 50  0001 C CNN
F 3 "" H 6150 2250 50  0000 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR306
U 1 1 570E46BD
P 6150 3100
F 0 "#PWR306" H 6150 2850 50  0001 C CNN
F 1 "GND" H 6150 2950 50  0000 C CNN
F 2 "" H 6150 3100 50  0000 C CNN
F 3 "" H 6150 3100 50  0000 C CNN
	1    6150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3100 6150 2400
Wire Wire Line
	6150 1300 6150 2100
Connection ~ 6150 1300
$EndSCHEMATC
