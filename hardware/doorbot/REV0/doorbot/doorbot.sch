EESchema Schematic File Version 4
LIBS:doorbot-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MakeIt Labs - Doorbot 4"
Date ""
Rev "4.REV0"
Comp "MakeIt Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5C8E7E43
P 2200 5800
F 0 "U1" H 1800 7300 50  0000 C CNN
F 1 "ATmega328P-AU" H 2600 4350 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2200 5800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2200 5800 50  0001 C CNN
	1    2200 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5C8E84F8
P 2100 2300
F 0 "J1" H 1450 3600 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2850 1050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2100 2300 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6400 3750 6400
Wire Wire Line
	2800 6300 3350 6300
Text Label 2900 6400 0    50   ~ 0
AT_TXD
Text Label 2900 6300 0    50   ~ 0
AT_RXD
$Comp
L Device:R_Small_US R1
U 1 1 5C8E9583
P 3700 6200
F 0 "R1" V 3600 6200 50  0000 C CNN
F 1 "1K" V 3800 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 6200 50  0001 C CNN
F 3 "~" H 3700 6200 50  0001 C CNN
	1    3700 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5C8E962E
P 3850 6400
F 0 "R2" V 3750 6400 50  0000 C CNN
F 1 "1K" V 3950 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3850 6400 50  0001 C CNN
F 3 "~" H 3850 6400 50  0001 C CNN
	1    3850 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 6300 3350 6200
Wire Wire Line
	3350 6200 3600 6200
Wire Wire Line
	3800 6200 4250 6200
Wire Wire Line
	3950 6400 4250 6400
Text Label 4000 6200 0    50   ~ 0
PI_TXD
Text Label 4000 6400 0    50   ~ 0
PI_RXD
Wire Wire Line
	1300 1400 750  1400
Wire Wire Line
	1300 1500 750  1500
Text Label 800  1400 0    50   ~ 0
PI_TXD
Text Label 800  1500 0    50   ~ 0
PI_RXD
$Comp
L power:GND #PWR017
U 1 1 5C8E9D82
P 7150 5700
F 0 "#PWR017" H 7150 5450 50  0001 C CNN
F 1 "GND" H 7155 5527 50  0000 C CNN
F 2 "" H 7150 5700 50  0001 C CNN
F 3 "" H 7150 5700 50  0001 C CNN
	1    7150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5600 7150 5600
Wire Wire Line
	7150 5600 7150 5700
Wire Wire Line
	7350 5050 7150 5050
Wire Wire Line
	7150 5050 7150 5600
Connection ~ 7150 5600
Wire Wire Line
	7350 4850 6800 4850
Wire Wire Line
	3250 6500 2800 6500
Wire Wire Line
	2800 6600 3250 6600
Wire Wire Line
	6100 5400 6800 5400
$Comp
L Device:R_Small_US R11
U 1 1 5C8EA3FB
P 6800 4750
F 0 "R11" H 6868 4796 50  0000 L CNN
F 1 "4.7K" H 6868 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 4750 50  0001 C CNN
F 3 "~" H 6800 4750 50  0001 C CNN
	1    6800 4750
	1    0    0    -1  
$EndComp
Connection ~ 6800 4850
Wire Wire Line
	6800 4850 6100 4850
$Comp
L Device:R_Small_US R12
U 1 1 5C8EA4A4
P 6800 5300
F 0 "R12" H 6868 5346 50  0000 L CNN
F 1 "4.7K" H 6868 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 5300 50  0001 C CNN
F 3 "~" H 6800 5300 50  0001 C CNN
	1    6800 5300
	1    0    0    -1  
$EndComp
Connection ~ 6800 5400
Wire Wire Line
	6800 5400 7350 5400
$Comp
L power:+5V #PWR015
U 1 1 5C8EA57B
P 6800 4650
F 0 "#PWR015" H 6800 4500 50  0001 C CNN
F 1 "+5V" H 6815 4823 50  0000 C CNN
F 2 "" H 6800 4650 50  0001 C CNN
F 3 "" H 6800 4650 50  0001 C CNN
	1    6800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5C8EA5B8
P 6800 5200
F 0 "#PWR016" H 6800 5050 50  0001 C CNN
F 1 "+5V" H 6815 5373 50  0000 C CNN
F 2 "" H 6800 5200 50  0001 C CNN
F 3 "" H 6800 5200 50  0001 C CNN
	1    6800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C8EA788
P 1900 800
F 0 "#PWR02" H 1900 650 50  0001 C CNN
F 1 "+5V" H 1915 973 50  0000 C CNN
F 2 "" H 1900 800 50  0001 C CNN
F 3 "" H 1900 800 50  0001 C CNN
	1    1900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1000 1900 900 
Wire Wire Line
	1900 900  2000 900 
Wire Wire Line
	2000 900  2000 1000
Wire Wire Line
	1900 800  1900 900 
Connection ~ 1900 900 
Wire Wire Line
	2200 1000 2200 900 
Wire Wire Line
	2200 900  2300 900 
Wire Wire Line
	2300 900  2300 1000
Wire Wire Line
	2200 900  2200 800 
Connection ~ 2200 900 
$Comp
L power:+3.3V #PWR03
U 1 1 5C8EB749
P 2200 800
F 0 "#PWR03" H 2200 650 50  0001 C CNN
F 1 "+3.3V" H 2215 973 50  0000 C CNN
F 2 "" H 2200 800 50  0001 C CNN
F 3 "" H 2200 800 50  0001 C CNN
	1    2200 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3600 1700 3700
Wire Wire Line
	1700 3700 1800 3700
Wire Wire Line
	2400 3700 2400 3600
Wire Wire Line
	1800 3600 1800 3700
Connection ~ 1800 3700
Wire Wire Line
	1800 3700 1900 3700
Wire Wire Line
	1900 3600 1900 3700
Connection ~ 1900 3700
Wire Wire Line
	1900 3700 2000 3700
Wire Wire Line
	2000 3600 2000 3700
Connection ~ 2000 3700
Wire Wire Line
	2000 3700 2100 3700
Wire Wire Line
	2100 3600 2100 3700
Connection ~ 2100 3700
Wire Wire Line
	2100 3700 2200 3700
Wire Wire Line
	2200 3600 2200 3700
Connection ~ 2200 3700
Wire Wire Line
	2200 3700 2300 3700
Wire Wire Line
	2300 3600 2300 3700
Connection ~ 2300 3700
Wire Wire Line
	2300 3700 2400 3700
$Comp
L power:GND #PWR01
U 1 1 5C8EE8EF
P 1700 3750
F 0 "#PWR01" H 1700 3500 50  0001 C CNN
F 1 "GND" H 1705 3577 50  0000 C CNN
F 2 "" H 1700 3750 50  0001 C CNN
F 3 "" H 1700 3750 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3750 1700 3700
Connection ~ 1700 3700
$Comp
L power:GND #PWR05
U 1 1 5C8EFB3D
P 2200 7300
F 0 "#PWR05" H 2200 7050 50  0001 C CNN
F 1 "GND" H 2205 7127 50  0000 C CNN
F 2 "" H 2200 7300 50  0001 C CNN
F 3 "" H 2200 7300 50  0001 C CNN
	1    2200 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4300 2200 4200
Wire Wire Line
	2200 4200 2300 4200
Wire Wire Line
	2300 4200 2300 4300
$Comp
L power:+5V #PWR04
U 1 1 5C8F0775
P 2200 4200
F 0 "#PWR04" H 2200 4050 50  0001 C CNN
F 1 "+5V" H 2215 4373 50  0000 C CNN
F 2 "" H 2200 4200 50  0001 C CNN
F 3 "" H 2200 4200 50  0001 C CNN
	1    2200 4200
	1    0    0    -1  
$EndComp
Connection ~ 2200 4200
$Comp
L doorbot:DRV103 U7
U 1 1 5C8F15EA
P 7900 1500
F 0 "U7" H 9141 1246 50  0000 L CNN
F 1 "DRV103" H 9141 1155 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7900 1500 50  0001 C CNN
F 3 "" H 7900 1500 50  0001 C CNN
	1    7900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR011
U 1 1 5C8F5554
P 6550 2850
F 0 "#PWR011" H 6550 2600 50  0001 C CNN
F 1 "Earth" H 6550 2700 50  0001 C CNN
F 2 "" H 6550 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR023
U 1 1 5C8F5593
P 8700 2300
F 0 "#PWR023" H 8700 2050 50  0001 C CNN
F 1 "Earth" H 8700 2150 50  0001 C CNN
F 2 "" H 8700 2300 50  0001 C CNN
F 3 "~" H 8700 2300 50  0001 C CNN
	1    8700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2850 6550 2750
Wire Wire Line
	6450 2750 6550 2750
Wire Wire Line
	8700 2300 8700 2200
$Comp
L Regulator_Linear:L78L05_SO8 U8
U 1 1 5C8F790B
P 9350 950
F 0 "U8" H 9350 1192 50  0000 C CNN
F 1 "L78L05_SO8" H 9350 1101 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9450 1150 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 9550 950 50  0001 C CNN
	1    9350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1400 8700 1000
Wire Wire Line
	8700 950  8900 950 
$Comp
L power:Earth #PWR025
U 1 1 5C8F93AE
P 9350 1250
F 0 "#PWR025" H 9350 1000 50  0001 C CNN
F 1 "Earth" H 9350 1100 50  0001 C CNN
F 2 "" H 9350 1250 50  0001 C CNN
F 3 "~" H 9350 1250 50  0001 C CNN
	1    9350 1250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR024
U 1 1 5C8F93FB
P 8900 1150
F 0 "#PWR024" H 8900 900 50  0001 C CNN
F 1 "Earth" H 8900 1000 50  0001 C CNN
F 2 "" H 8900 1150 50  0001 C CNN
F 3 "~" H 8900 1150 50  0001 C CNN
	1    8900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR027
U 1 1 5C8F943C
P 9750 1150
F 0 "#PWR027" H 9750 900 50  0001 C CNN
F 1 "Earth" H 9750 1000 50  0001 C CNN
F 2 "" H 9750 1150 50  0001 C CNN
F 3 "~" H 9750 1150 50  0001 C CNN
	1    9750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C8F952C
P 8900 1050
F 0 "C3" H 8992 1096 50  0000 L CNN
F 1 ".1uF" H 8992 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8900 1050 50  0001 C CNN
F 3 "~" H 8900 1050 50  0001 C CNN
	1    8900 1050
	1    0    0    -1  
$EndComp
Connection ~ 8900 950 
Wire Wire Line
	8900 950  9050 950 
$Comp
L Device:C_Small C4
U 1 1 5C8F959D
P 9750 1050
F 0 "C4" H 9658 1004 50  0000 R CNN
F 1 ".1uF" H 9658 1095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9750 1050 50  0001 C CNN
F 3 "~" H 9750 1050 50  0001 C CNN
	1    9750 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 950  9750 950 
$Comp
L power:+5VA #PWR026
U 1 1 5C8FA3AD
P 9750 950
F 0 "#PWR026" H 9750 800 50  0001 C CNN
F 1 "+5VA" H 9765 1123 50  0000 C CNN
F 2 "" H 9750 950 50  0001 C CNN
F 3 "" H 9750 950 50  0001 C CNN
	1    9750 950 
	1    0    0    -1  
$EndComp
Connection ~ 9750 950 
$Comp
L power:+12VA #PWR022
U 1 1 5C8FA576
P 8700 950
F 0 "#PWR022" H 8700 800 50  0001 C CNN
F 1 "+12VA" H 8715 1123 50  0000 C CNN
F 2 "" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8700 950 
	1    0    0    -1  
$EndComp
Connection ~ 8700 950 
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 5C8FCAEF
P 7050 2550
F 0 "Q1" H 7255 2596 50  0000 L CNN
F 1 "2N7002" H 7255 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7250 2475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7050 2550 50  0001 L CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5C901CB2
P 6650 2550
F 0 "R8" V 6445 2550 50  0000 C CNN
F 1 "1K" V 6536 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6650 2550 50  0001 C CNN
F 3 "~" H 6650 2550 50  0001 C CNN
	1    6650 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2550 6500 2550
Wire Wire Line
	6750 2550 6850 2550
$Comp
L Device:R_Small_US R7
U 1 1 5C904813
P 6500 2150
F 0 "R7" H 6568 2196 50  0000 L CNN
F 1 "4.7K" H 6568 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 2150 50  0001 C CNN
F 3 "~" H 6500 2150 50  0001 C CNN
	1    6500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5C9048D6
P 7150 2150
F 0 "R15" H 7218 2196 50  0000 L CNN
F 1 "4.7K" H 7218 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7150 2150 50  0001 C CNN
F 3 "~" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2250 7150 2300
Wire Wire Line
	6500 2250 6500 2550
Connection ~ 6500 2550
Wire Wire Line
	6500 2550 6550 2550
Wire Wire Line
	7150 2050 7150 2000
Wire Wire Line
	7150 2000 6500 2000
Wire Wire Line
	6500 2000 6500 2050
$Comp
L power:+5VA #PWR010
U 1 1 5C9077E5
P 6500 2000
F 0 "#PWR010" H 6500 1850 50  0001 C CNN
F 1 "+5VA" H 6515 2173 50  0000 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
Connection ~ 6500 2000
Wire Wire Line
	7150 2300 7450 2300
Wire Wire Line
	7450 2300 7450 1950
Wire Wire Line
	7450 1950 7800 1950
Connection ~ 7150 2300
Wire Wire Line
	7150 2300 7150 2350
Wire Wire Line
	6550 2750 7150 2750
Connection ~ 6550 2750
$Comp
L Device:R_Small_US R13
U 1 1 5C90B605
P 7100 1000
F 0 "R13" V 6895 1000 50  0000 C CNN
F 1 "R_PWM" V 6986 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 1000 50  0001 C CNN
F 3 "~" H 7100 1000 50  0001 C CNN
	1    7100 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 5C90B6E0
P 7100 1800
F 0 "R14" V 6895 1800 50  0000 C CNN
F 1 "R_FREQ" V 6986 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C90E162
P 7100 1400
F 0 "C1" V 6871 1400 50  0000 C CNN
F 1 "C_DELAY" V 6962 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7100 1400 50  0001 C CNN
F 3 "~" H 7100 1400 50  0001 C CNN
	1    7100 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 1800 7800 1800
Wire Wire Line
	7800 1700 7350 1700
Wire Wire Line
	7350 1700 7350 1400
Wire Wire Line
	7350 1400 7200 1400
Wire Wire Line
	7800 1600 7450 1600
Wire Wire Line
	7450 1600 7450 1000
Wire Wire Line
	7450 1000 7200 1000
Wire Wire Line
	7000 1000 6800 1000
Wire Wire Line
	6800 1000 6800 1400
Wire Wire Line
	6800 1800 7000 1800
Wire Wire Line
	7000 1400 6800 1400
Connection ~ 6800 1400
Wire Wire Line
	6800 1400 6800 1800
$Comp
L power:Earth #PWR012
U 1 1 5C91695B
P 6800 1800
F 0 "#PWR012" H 6800 1550 50  0001 C CNN
F 1 "Earth" H 6800 1650 50  0001 C CNN
F 2 "" H 6800 1800 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
Connection ~ 6800 1800
$Comp
L Device:CP1 C2
U 1 1 5C916C3E
P 8300 1200
F 0 "C2" H 8415 1246 50  0000 L CNN
F 1 "1uF" H 8415 1155 50  0000 L CNN
F 2 "" H 8300 1200 50  0001 C CNN
F 3 "~" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR018
U 1 1 5C916D79
P 8300 1350
F 0 "#PWR018" H 8300 1100 50  0001 C CNN
F 1 "Earth" H 8300 1200 50  0001 C CNN
F 2 "" H 8300 1350 50  0001 C CNN
F 3 "~" H 8300 1350 50  0001 C CNN
	1    8300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1050 8300 1000
Wire Wire Line
	8300 1000 8700 1000
Connection ~ 8700 1000
Wire Wire Line
	8700 1000 8700 950 
$Comp
L Diode:B260 D1
U 1 1 5C918A2D
P 10150 1500
F 0 "D1" V 10104 1579 50  0000 L CNN
F 1 "B260" V 10195 1579 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 10150 1325 50  0001 C CNN
F 3 "http://www.jameco.com/Jameco/Products/ProdDS/1538777.pdf" H 10150 1500 50  0001 C CNN
	1    10150 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1650 10150 1650
$Comp
L power:+12VA #PWR030
U 1 1 5C91A6B1
P 10150 1350
F 0 "#PWR030" H 10150 1200 50  0001 C CNN
F 1 "+12VA" H 10165 1523 50  0000 C CNN
F 2 "" H 10150 1350 50  0001 C CNN
F 3 "" H 10150 1350 50  0001 C CNN
	1    10150 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5C91CADA
P 6800 3100
F 0 "R9" H 6868 3146 50  0000 L CNN
F 1 "R_LED" H 6868 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 3100 50  0001 C CNN
F 3 "~" H 6800 3100 50  0001 C CNN
	1    6800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3250 6800 3250
Wire Wire Line
	6800 3250 6800 3200
Wire Wire Line
	6450 3450 7650 3450
Wire Wire Line
	7650 3450 7650 2050
Wire Wire Line
	7650 2050 7800 2050
$Comp
L power:+5VA #PWR013
U 1 1 5C92076F
P 6800 3000
F 0 "#PWR013" H 6800 2850 50  0001 C CNN
F 1 "+5VA" H 6815 3173 50  0000 C CNN
F 2 "" H 6800 3000 50  0001 C CNN
F 3 "" H 6800 3000 50  0001 C CNN
	1    6800 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x12 J2
U 1 1 5C921652
P 10000 4950
F 0 "J2" H 9950 5550 50  0000 L CNN
F 1 "Screw_Terminal_01x12" H 9950 4250 50  0000 L CNN
F 2 "doorbot_pcb_library:PHOENIX_1803523" H 10000 4950 50  0001 C CNN
F 3 "~" H 10000 4950 50  0001 C CNN
	1    10000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C921DF0
P 5750 2850
F 0 "#PWR08" H 5750 2600 50  0001 C CNN
F 1 "GND" H 5755 2677 50  0000 C CNN
F 2 "" H 5750 2850 50  0001 C CNN
F 3 "" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C921E4B
P 5750 3550
F 0 "#PWR09" H 5750 3300 50  0001 C CNN
F 1 "GND" H 5755 3377 50  0000 C CNN
F 2 "" H 5750 3550 50  0001 C CNN
F 3 "" H 5750 3550 50  0001 C CNN
	1    5750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3550 5750 3450
Wire Wire Line
	5750 3450 5850 3450
Wire Wire Line
	5750 2850 5750 2750
Wire Wire Line
	5750 2750 5850 2750
$Comp
L Device:R_Small_US R6
U 1 1 5C925F82
P 5500 2550
F 0 "R6" V 5295 2550 50  0000 C CNN
F 1 "47" V 5386 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5500 2550 50  0001 C CNN
F 3 "~" H 5500 2550 50  0001 C CNN
	1    5500 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5C926051
P 5400 3100
F 0 "R5" H 5468 3146 50  0000 L CNN
F 1 "4.7K" H 5468 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5400 3100 50  0001 C CNN
F 3 "~" H 5400 3100 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3250 5400 3250
Wire Wire Line
	5400 3250 5400 3200
Wire Wire Line
	5850 2550 5600 2550
Wire Wire Line
	2900 3000 5050 3000
Wire Wire Line
	5050 3000 5050 2550
Wire Wire Line
	5050 2550 5400 2550
Wire Wire Line
	5400 3250 4900 3250
Connection ~ 5400 3250
$Comp
L Device:R_Small_US R18
U 1 1 5C930453
P 8350 4050
F 0 "R18" H 8282 4004 50  0000 R CNN
F 1 "470" H 8282 4095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 4050 50  0001 C CNN
F 3 "~" H 8350 4050 50  0001 C CNN
	1    8350 4050
	-1   0    0    1   
$EndComp
$Comp
L Isolator:TLP291 U4
U 1 1 5C930576
P 7650 4350
F 0 "U4" H 7650 4675 50  0000 C CNN
F 1 "TLP291" H 7650 4584 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 7450 4150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 7650 4350 50  0001 L CNN
	1    7650 4350
	-1   0    0    -1  
$EndComp
Text Label 9400 1650 0    50   ~ 0
SOLENOID_LOW
Text Label 9100 5350 0    50   ~ 0
SOLENOID_LOW
Wire Wire Line
	9800 5350 9000 5350
Wire Wire Line
	9800 5550 9000 5550
$Comp
L power:+12VA #PWR020
U 1 1 5C9409B0
P 8400 6050
F 0 "#PWR020" H 8400 5900 50  0001 C CNN
F 1 "+12VA" H 8415 6223 50  0000 C CNN
F 2 "" H 8400 6050 50  0001 C CNN
F 3 "" H 8400 6050 50  0001 C CNN
	1    8400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5450 8500 5450
Wire Wire Line
	8500 5450 8500 5600
$Comp
L power:Earth #PWR021
U 1 1 5C951A82
P 8500 5600
F 0 "#PWR021" H 8500 5350 50  0001 C CNN
F 1 "Earth" H 8500 5450 50  0001 C CNN
F 2 "" H 8500 5600 50  0001 C CNN
F 3 "~" H 8500 5600 50  0001 C CNN
	1    8500 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5C95A449
P 8800 6200
F 0 "F1" V 8575 6200 50  0000 C CNN
F 1 "1.5A PTC" V 8666 6200 50  0000 C CNN
F 2 "" H 8850 6000 50  0001 L CNN
F 3 "~" H 8800 6200 50  0001 C CNN
	1    8800 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 6200 8400 6200
Wire Wire Line
	8400 6200 8400 6050
Wire Wire Line
	8950 6200 9000 6200
Wire Wire Line
	9000 6200 9000 5550
Text Label 9100 5550 0    50   ~ 0
+12V_IN
$Comp
L power:+12VA #PWR029
U 1 1 5C96904E
P 9800 5250
F 0 "#PWR029" H 9800 5100 50  0001 C CNN
F 1 "+12VA" V 9815 5377 50  0000 L CNN
F 2 "" H 9800 5250 50  0001 C CNN
F 3 "" H 9800 5250 50  0001 C CNN
	1    9800 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 5150 8500 5150
Wire Wire Line
	8500 5150 8500 5450
Connection ~ 8500 5450
Wire Wire Line
	7950 4250 8350 4250
Wire Wire Line
	8350 4250 8350 4150
$Comp
L power:+5VA #PWR019
U 1 1 5C975510
P 8350 3950
F 0 "#PWR019" H 8350 3800 50  0001 C CNN
F 1 "+5VA" H 8365 4123 50  0000 C CNN
F 2 "" H 8350 3950 50  0001 C CNN
F 3 "" H 8350 3950 50  0001 C CNN
	1    8350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4450 9800 4450
Text Label 9100 4450 0    50   ~ 0
DOOR_SWITCH_IN
$Comp
L power:+12VA #PWR028
U 1 1 5C986209
P 9800 5050
F 0 "#PWR028" H 9800 4900 50  0001 C CNN
F 1 "+12VA" V 9815 5177 50  0000 L CNN
F 2 "" H 9800 5050 50  0001 C CNN
F 3 "" H 9800 5050 50  0001 C CNN
	1    9800 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 5150 8500 5050
Wire Wire Line
	8500 4550 9800 4550
Connection ~ 8500 5150
Text Notes 10100 5400 0    50   ~ 0
1 - DOOR SWITCH (OPTO)\n2 - DOOR SWITCH (GND)\n3 - \n4 - \n5 - WIEGAND D0\n6 - WIEGAND D1\n7 - WIEGAND 12V\n8 - WIEGAND GND\n9 - SOLENOID +\n10 - SOLENOID -\n11 - GND IN\n12- 12-24V IN
$Comp
L Device:R_Small_US R4
U 1 1 5C994368
P 4800 3250
F 0 "R4" V 4700 3250 50  0000 C CNN
F 1 "10" V 4900 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 3250 50  0001 C CNN
F 3 "~" H 4800 3250 50  0001 C CNN
	1    4800 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3250 3150 3250
Wire Wire Line
	3150 3250 3150 3100
Wire Wire Line
	3150 3100 2900 3100
$Comp
L power:+3.3V #PWR07
U 1 1 5C99F118
P 5400 3000
F 0 "#PWR07" H 5400 2850 50  0001 C CNN
F 1 "+3.3V" H 5415 3173 50  0000 C CNN
F 2 "" H 5400 3000 50  0001 C CNN
F 3 "" H 5400 3000 50  0001 C CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291 U5
U 1 1 5C8F2AA2
P 7650 4950
F 0 "U5" H 7650 5275 50  0000 C CNN
F 1 "TLP291" H 7650 5184 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 7450 4750 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 7650 4950 50  0001 L CNN
	1    7650 4950
	-1   0    0    -1  
$EndComp
$Comp
L Isolator:TLP291 U6
U 1 1 5C8F631C
P 7650 5500
F 0 "U6" H 7650 5825 50  0000 C CNN
F 1 "TLP291" H 7650 5734 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 7450 5300 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 7650 5500 50  0001 L CNN
	1    7650 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 5050 8500 5050
Wire Wire Line
	8500 5600 7950 5600
$Comp
L Device:R_Small_US R16
U 1 1 5C904FFD
P 8150 4850
F 0 "R16" V 8050 4850 50  0000 C CNN
F 1 "100" V 8250 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 4850 50  0001 C CNN
F 3 "~" H 8150 4850 50  0001 C CNN
	1    8150 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5C90511D
P 8150 5400
F 0 "R17" V 8050 5400 50  0000 C CNN
F 1 "R_Small_US" V 8250 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8150 5400 50  0001 C CNN
F 3 "~" H 8150 5400 50  0001 C CNN
	1    8150 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 5400 8050 5400
Wire Wire Line
	7950 4850 8050 4850
Connection ~ 8500 5050
Wire Wire Line
	8500 5050 8500 4550
Connection ~ 8500 5600
Wire Wire Line
	8250 5400 8400 5400
Wire Wire Line
	8400 5400 8400 4950
Wire Wire Line
	8400 4950 9800 4950
Wire Wire Line
	9800 4850 8250 4850
$Comp
L Isolator:TLP291 U3
U 1 1 5C93D83E
P 6150 3350
F 0 "U3" H 6150 3675 50  0000 C CNN
F 1 "TLP291" H 6150 3584 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 5950 3150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 6150 3350 50  0001 L CNN
	1    6150 3350
	-1   0    0    -1  
$EndComp
$Comp
L Isolator:TLP291 U2
U 1 1 5C945BED
P 6150 2650
F 0 "U2" H 6150 2975 50  0000 C CNN
F 1 "TLP291" H 6150 2884 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 5950 2450 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 6150 2650 50  0001 L CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5050 7150 4450
Wire Wire Line
	7150 4450 7350 4450
Connection ~ 7150 5050
Wire Wire Line
	7350 4250 6800 4250
$Comp
L Device:R_Small_US R10
U 1 1 5C96B587
P 6800 4150
F 0 "R10" H 6868 4196 50  0000 L CNN
F 1 "4.7K" H 6868 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6800 4150 50  0001 C CNN
F 3 "~" H 6800 4150 50  0001 C CNN
	1    6800 4150
	1    0    0    -1  
$EndComp
Connection ~ 6800 4250
Wire Wire Line
	6800 4250 5450 4250
$Comp
L power:+3.3V #PWR014
U 1 1 5C96FFC2
P 6800 4050
F 0 "#PWR014" H 6800 3900 50  0001 C CNN
F 1 "+3.3V" H 6815 4223 50  0000 C CNN
F 2 "" H 6800 4050 50  0001 C CNN
F 3 "" H 6800 4050 50  0001 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
Text Label 6100 4850 0    50   ~ 0
WG_D0
Text Label 6100 5400 0    50   ~ 0
WG_D1
Text Label 2900 6500 0    50   ~ 0
WG_D0
Text Label 2900 6600 0    50   ~ 0
WG_D1
$Comp
L Device:R_Small_US R3
U 1 1 5C97D86B
P 3950 6600
F 0 "R3" H 4018 6646 50  0000 L CNN
F 1 "2K" H 4018 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3950 6600 50  0001 C CNN
F 3 "~" H 3950 6600 50  0001 C CNN
	1    3950 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C97D9C4
P 3950 6700
F 0 "#PWR06" H 3950 6450 50  0001 C CNN
F 1 "GND" H 3955 6527 50  0000 C CNN
F 2 "" H 3950 6700 50  0001 C CNN
F 3 "" H 3950 6700 50  0001 C CNN
	1    3950 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6500 3950 6400
Connection ~ 3950 6400
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5C991E08
P 3450 850
F 0 "J3" H 3500 1067 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 3500 976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 3450 850 50  0001 C CNN
F 3 "~" H 3450 850 50  0001 C CNN
	1    3450 850 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
