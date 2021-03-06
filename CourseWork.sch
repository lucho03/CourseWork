EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_UNO_R2 Arduino1
U 1 1 607FE3D2
P 2900 2550
F 0 "Arduino1" H 2900 3731 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 2900 3640 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 2900 2550 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 2900 2550 50  0001 C CNN
	1    2900 2550
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:MPU-6050 MPU1
U 1 1 60800C5D
P 5700 2300
F 0 "MPU1" H 5700 1511 50  0000 C CNN
F 1 "MPU-6050" H 5700 1420 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 5700 1500 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 5700 2150 50  0001 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 4450 2100
Wire Wire Line
	4450 2100 4450 3050
Wire Wire Line
	4450 3050 3400 3050
Wire Wire Line
	5000 2000 4350 2000
Wire Wire Line
	4350 2000 4350 2950
Wire Wire Line
	4350 2950 3400 2950
Wire Wire Line
	3000 3650 3000 3750
Wire Wire Line
	3000 3750 5700 3750
Wire Wire Line
	5700 3750 5700 3000
Wire Wire Line
	3000 1550 3000 1300
Wire Wire Line
	3000 1300 5800 1300
$Comp
L Display_Character:HY1602E LCD1
U 1 1 60823E93
P 2950 4900
F 0 "LCD1" H 2950 5881 50  0000 C CNN
F 1 "HY1602E" H 2950 5790 50  0000 C CNN
F 2 "Display:HY1602E" H 2950 4000 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 3150 5000 50  0001 C CNN
	1    2950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5200 1550 5200
Wire Wire Line
	1550 5200 1550 2350
Wire Wire Line
	1550 2350 2400 2350
Wire Wire Line
	2550 5300 1700 5300
Wire Wire Line
	1700 5300 1700 2450
Wire Wire Line
	1700 2450 2400 2450
Wire Wire Line
	2550 5400 1900 5400
Wire Wire Line
	1900 5400 1900 2550
Wire Wire Line
	1900 2550 2400 2550
Wire Wire Line
	2550 5500 2100 5500
Wire Wire Line
	2100 5500 2100 2650
Wire Wire Line
	2100 2650 2400 2650
Wire Wire Line
	2550 4600 2250 4600
Wire Wire Line
	2250 4600 2250 2750
Wire Wire Line
	2250 2750 2400 2750
Wire Wire Line
	2550 4300 2350 4300
Wire Wire Line
	2350 4300 2350 2850
Wire Wire Line
	2350 2850 2400 2850
$Comp
L power:GND #PWR0101
U 1 1 60828354
P 2500 4500
F 0 "#PWR0101" H 2500 4250 50  0001 C CNN
F 1 "GND" V 2505 4372 50  0000 R CNN
F 2 "" H 2500 4500 50  0001 C CNN
F 3 "" H 2500 4500 50  0001 C CNN
	1    2500 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4500 2550 4500
Connection ~ 2550 4500
Wire Wire Line
	2550 4500 2500 4500
$Comp
L power:GND #PWR0102
U 1 1 60829D2A
P 2950 5900
F 0 "#PWR0102" H 2950 5650 50  0001 C CNN
F 1 "GND" H 2955 5727 50  0000 C CNN
F 2 "" H 2950 5900 50  0001 C CNN
F 3 "" H 2950 5900 50  0001 C CNN
	1    2950 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 6082BD84
P 3300 4000
F 0 "#PWR0103" H 3300 3850 50  0001 C CNN
F 1 "+5V" H 3315 4173 50  0000 C CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4100 3300 4100
Wire Wire Line
	3300 4100 3300 4000
Wire Wire Line
	2950 5700 2950 5900
NoConn ~ 3350 4300
NoConn ~ 3350 4900
NoConn ~ 3350 5000
Wire Wire Line
	3400 2550 3750 2550
$Comp
L Device:R R1
U 1 1 609BBCF6
P 4250 4400
F 0 "R1" H 4320 4446 50  0000 L CNN
F 1 "2K" H 4320 4355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 4400 50  0001 C CNN
F 3 "~" H 4250 4400 50  0001 C CNN
	1    4250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4550 4250 4650
Connection ~ 4250 4650
$Comp
L Switch:SW_Push Button_Right1
U 1 1 609C303B
P 5050 4650
F 0 "Button_Right1" H 5050 4935 50  0000 C CNN
F 1 "SW_Push" H 5050 4844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 4850 50  0001 C CNN
F 3 "~" H 5050 4850 50  0001 C CNN
	1    5050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4650 4850 4650
Wire Wire Line
	5250 4650 5750 4650
$Comp
L Device:R R2
U 1 1 609C531F
P 4250 5000
F 0 "R2" H 4320 5046 50  0000 L CNN
F 1 "330R" H 4320 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 5000 50  0001 C CNN
F 3 "~" H 4250 5000 50  0001 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push Button_Up1
U 1 1 609C566E
P 5050 5150
F 0 "Button_Up1" H 5050 5435 50  0000 C CNN
F 1 "SW_Push" H 5050 5344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 5350 50  0001 C CNN
F 3 "~" H 5050 5350 50  0001 C CNN
	1    5050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 609C5A30
P 4250 5500
F 0 "R3" H 4320 5546 50  0000 L CNN
F 1 "620R" H 4320 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 5500 50  0001 C CNN
F 3 "~" H 4250 5500 50  0001 C CNN
	1    4250 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 609C5DFC
P 4250 5950
F 0 "R4" H 4320 5996 50  0000 L CNN
F 1 "1K" H 4320 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 5950 50  0001 C CNN
F 3 "~" H 4250 5950 50  0001 C CNN
	1    4250 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 609C6115
P 4250 6450
F 0 "R5" H 4320 6496 50  0000 L CNN
F 1 "3K3" H 4320 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 6450 50  0001 C CNN
F 3 "~" H 4250 6450 50  0001 C CNN
	1    4250 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push Button_Down1
U 1 1 609C64B8
P 5050 5650
F 0 "Button_Down1" H 5050 5935 50  0000 C CNN
F 1 "SW_Push" H 5050 5844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 5850 50  0001 C CNN
F 3 "~" H 5050 5850 50  0001 C CNN
	1    5050 5650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push Button_Left1
U 1 1 609C6723
P 5050 6100
F 0 "Button_Left1" H 5050 6385 50  0000 C CNN
F 1 "SW_Push" H 5050 6294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 6300 50  0001 C CNN
F 3 "~" H 5050 6300 50  0001 C CNN
	1    5050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5150 4250 5350
Wire Wire Line
	4250 5650 4250 5800
Wire Wire Line
	4250 6100 4250 6300
Wire Wire Line
	4250 5150 4850 5150
Connection ~ 4250 5150
Wire Wire Line
	4250 5650 4850 5650
Connection ~ 4250 5650
Wire Wire Line
	4250 6100 4850 6100
Connection ~ 4250 6100
Wire Wire Line
	5750 4650 5750 5150
Wire Wire Line
	5750 5150 5250 5150
Wire Wire Line
	5250 5650 5750 5650
Wire Wire Line
	5750 5650 5750 5150
Connection ~ 5750 5150
Wire Wire Line
	5250 6100 5750 6100
Wire Wire Line
	5750 5650 5750 6100
Connection ~ 5750 5650
Connection ~ 5750 6100
$Comp
L power:GND #PWR0104
U 1 1 609D375C
P 5750 6950
F 0 "#PWR0104" H 5750 6700 50  0001 C CNN
F 1 "GND" H 5755 6777 50  0000 C CNN
F 2 "" H 5750 6950 50  0001 C CNN
F 3 "" H 5750 6950 50  0001 C CNN
	1    5750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2550 3750 4650
Wire Wire Line
	5800 1300 5800 1600
Connection ~ 4250 5800
Wire Wire Line
	4250 5800 4250 5850
Wire Wire Line
	3750 4650 4250 4650
Wire Wire Line
	4250 4650 4250 4850
$Comp
L power:+5V #PWR0105
U 1 1 609E976E
P 4250 4150
F 0 "#PWR0105" H 4250 4000 50  0001 C CNN
F 1 "+5V" H 4265 4323 50  0000 C CNN
F 2 "" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4250 4250 4150
Text Label 5350 5100 0    50   ~ 0
UP
Text Label 5350 4600 0    50   ~ 0
RIGHT
Text Label 5350 5600 0    50   ~ 0
DOWN
Text Label 5350 6050 0    50   ~ 0
LEFT
Wire Wire Line
	5750 6100 5750 6600
$Comp
L Switch:SW_Push Button_Select1
U 1 1 609F72FB
P 5050 6600
F 0 "Button_Select1" H 5050 6885 50  0000 C CNN
F 1 "SW_Push" H 5050 6794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 5050 6800 50  0001 C CNN
F 3 "~" H 5050 6800 50  0001 C CNN
	1    5050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6600 4850 6600
Wire Wire Line
	5250 6600 5750 6600
Connection ~ 5750 6600
Wire Wire Line
	5750 6600 5750 6950
Text Label 5350 6550 0    50   ~ 0
SELECT
NoConn ~ 2550 4800
NoConn ~ 2550 4900
NoConn ~ 2550 5000
NoConn ~ 2550 5100
NoConn ~ 2400 1950
NoConn ~ 2400 2050
NoConn ~ 2400 2150
NoConn ~ 2400 2250
NoConn ~ 2400 2950
NoConn ~ 2400 3050
NoConn ~ 2400 3150
NoConn ~ 2400 3250
NoConn ~ 3400 2650
NoConn ~ 3400 2750
NoConn ~ 3400 2850
NoConn ~ 3400 2350
NoConn ~ 3400 2150
NoConn ~ 3400 1950
NoConn ~ 2800 3650
NoConn ~ 2900 3650
NoConn ~ 2800 1550
NoConn ~ 3100 1550
NoConn ~ 6400 2000
NoConn ~ 6400 2200
NoConn ~ 6400 2300
NoConn ~ 6400 2500
NoConn ~ 6400 2600
NoConn ~ 5000 2500
NoConn ~ 5000 2600
NoConn ~ 5000 2200
NoConn ~ 5600 1600
$EndSCHEMATC
