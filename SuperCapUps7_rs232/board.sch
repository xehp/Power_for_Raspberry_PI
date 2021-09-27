EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "SuperCapsUps7 2021"
Date "2021-09-15"
Rev ""
Comp "www.drekkar.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L board-rescue:C-Device-transistor_board-rescue C11
U 1 1 5F3038BA
P 7300 1450
F 0 "C11" H 7415 1496 50  0000 L CNN
F 1 "1uF" H 7415 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 1300 50  0001 C CNN
F 3 "~" H 7300 1450 50  0001 C CNN
	1    7300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1300 5850 1250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR012
U 1 1 5F253D6E
P 5700 1700
F 0 "#PWR012" H 5700 1450 50  0001 C CNN
F 1 "GND" H 5705 1527 50  0000 C CNN
F 2 "" H 5700 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0001 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:LED-Device D18
U 1 1 5F9420FF
P 7800 1950
F 0 "D18" V 7839 1833 50  0000 R CNN
F 1 "green" V 7748 1833 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7800 1950 50  0001 C CNN
F 3 "~" H 7800 1950 50  0001 C CNN
	1    7800 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 1350 7800 1250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR05
U 1 1 5F9463A2
P 7800 2150
F 0 "#PWR05" H 7800 1900 50  0001 C CNN
F 1 "GND" H 7805 1977 50  0000 C CNN
F 2 "" H 7800 2150 50  0001 C CNN
F 3 "" H 7800 2150 50  0001 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2150 7800 2100
Wire Wire Line
	7300 1300 7300 1250
Wire Wire Line
	7300 1250 7800 1250
Wire Wire Line
	8300 1250 7800 1250
Connection ~ 7800 1250
Wire Wire Line
	9300 4150 9400 4150
Wire Wire Line
	9400 4150 9400 4250
Wire Wire Line
	9300 4150 9300 4250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR06
U 1 1 60619793
P 9300 7300
F 0 "#PWR06" H 9300 7050 50  0001 C CNN
F 1 "GND" H 9305 7127 50  0000 C CNN
F 2 "" H 9300 7300 50  0001 C CNN
F 3 "" H 9300 7300 50  0001 C CNN
	1    9300 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 7300 9300 7250
$Comp
L board-rescue:C-Device-transistor_board-rescue C21
U 1 1 6076C128
P 8100 4800
F 0 "C21" H 7950 4900 50  0000 L CNN
F 1 "0.1uF" H 7850 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8138 4650 50  0001 C CNN
F 3 "~" H 8100 4800 50  0001 C CNN
	1    8100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4650 8100 4550
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR019
U 1 1 607705E1
P 8100 5000
F 0 "#PWR019" H 8100 4750 50  0001 C CNN
F 1 "GND" H 8105 4827 50  0000 C CNN
F 2 "" H 8100 5000 50  0001 C CNN
F 3 "" H 8100 5000 50  0001 C CNN
	1    8100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5000 8100 4950
Connection ~ 9300 4150
$Comp
L board-rescue:D_Zener-Device D10
U 1 1 60BF69AF
P 8300 1500
F 0 "D10" V 8254 1579 50  0000 L CNN
F 1 "D_Zener" V 8345 1579 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 8300 1500 50  0001 C CNN
F 3 "~" H 8300 1500 50  0001 C CNN
	1    8300 1500
	0    1    1    0   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR027
U 1 1 60C6FCB4
P 8300 1700
F 0 "#PWR027" H 8300 1450 50  0001 C CNN
F 1 "GND" H 8305 1527 50  0000 C CNN
F 2 "" H 8300 1700 50  0001 C CNN
F 3 "" H 8300 1700 50  0001 C CNN
	1    8300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1700 8300 1650
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR022
U 1 1 60C7C280
P 7800 4550
F 0 "#PWR022" H 7800 4300 50  0001 C CNN
F 1 "GND" H 7805 4377 50  0000 C CNN
F 2 "" H 7800 4550 50  0001 C CNN
F 3 "" H 7800 4550 50  0001 C CNN
	1    7800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4550 7800 4500
Wire Wire Line
	7800 4200 7800 4150
Wire Wire Line
	7800 4150 9300 4150
Wire Wire Line
	8300 1250 8300 1350
Wire Wire Line
	9300 3900 9300 4150
$Comp
L board-rescue:C-Device-transistor_board-rescue C20
U 1 1 607E35EF
P 7800 4350
F 0 "C20" H 7915 4396 50  0000 L CNN
F 1 "0.1uF" H 7915 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 4200 50  0001 C CNN
F 3 "~" H 7800 4350 50  0001 C CNN
	1    7800 4350
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C29
U 1 1 608BA525
P 12200 5750
F 0 "C29" H 12315 5796 50  0000 L CNN
F 1 "0.1uF" H 12315 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12238 5600 50  0001 C CNN
F 3 "~" H 12200 5750 50  0001 C CNN
	1    12200 5750
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR030
U 1 1 608C66BD
P 12200 5950
F 0 "#PWR030" H 12200 5700 50  0001 C CNN
F 1 "GND" H 12205 5777 50  0000 C CNN
F 2 "" H 12200 5950 50  0001 C CNN
F 3 "" H 12200 5950 50  0001 C CNN
	1    12200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 5950 12200 5900
$Comp
L board-rescue:MCP1825S-Regulator_Linear U10
U 1 1 6067E8F5
P 6650 1250
F 0 "U10" H 6650 1492 50  0000 C CNN
F 1 "3.3 Volt" H 6650 1401 50  0000 C CNN
F 2 "eit_footprints:DC-DC-Recom-R78" H 6550 1400 50  0001 C CNN
F 3 "" H 6650 1500 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1250 7300 1250
Connection ~ 7300 1250
Wire Wire Line
	6350 1250 5850 1250
Connection ~ 5850 1250
$Comp
L board-rescue:C-Device-transistor_board-rescue C10
U 1 1 60A36635
P 5850 1450
F 0 "C10" H 5965 1496 50  0000 L CNN
F 1 "1uF" H 5965 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5888 1300 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR034
U 1 1 60698246
P 11800 8400
F 0 "#PWR034" H 11800 8150 50  0001 C CNN
F 1 "GND" H 11805 8227 50  0000 C CNN
F 2 "" H 11800 8400 50  0001 C CNN
F 3 "" H 11800 8400 50  0001 C CNN
	1    11800 8400
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R29
U 1 1 60698261
P 10850 7000
F 0 "R29" V 10750 6950 50  0000 L CNN
F 1 "1K" V 10850 6950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10780 7000 50  0001 C CNN
F 3 "~" H 10850 7000 50  0001 C CNN
	1    10850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 7150 10850 8050
Wire Wire Line
	11800 7600 11800 7850
Wire Wire Line
	11500 8050 10850 8050
Wire Wire Line
	11800 8400 11800 8250
Wire Wire Line
	9900 6050 11800 6050
$Comp
L board-rescue:C-Device-transistor_board-rescue C23
U 1 1 60FC0BD1
P 4400 2350
F 0 "C23" H 4515 2396 50  0000 L CNN
F 1 "10uF" H 4515 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 2200 50  0001 C CNN
F 3 "~" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR0101
U 1 1 60FF7EFC
P 4400 2550
F 0 "#PWR0101" H 4400 2300 50  0001 C CNN
F 1 "GND" H 4405 2377 50  0000 C CNN
F 2 "" H 4400 2550 50  0001 C CNN
F 3 "" H 4400 2550 50  0001 C CNN
	1    4400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2550 4400 2500
$Comp
L board-rescue:Conn_02x03_Odd_Even-Connector_Generic J3
U 1 1 60A4C298
P 12200 4950
F 0 "J3" H 12250 5267 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 12250 5176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 12200 4950 50  0001 C CNN
F 3 "~" H 12200 4950 50  0001 C CNN
	1    12200 4950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR023
U 1 1 60A8C5A9
P 12550 5150
F 0 "#PWR023" H 12550 4900 50  0001 C CNN
F 1 "GND" H 12555 4977 50  0000 C CNN
F 2 "" H 12550 5150 50  0001 C CNN
F 3 "" H 12550 5150 50  0001 C CNN
	1    12550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12550 5150 12550 5050
Wire Wire Line
	12550 5050 12500 5050
Wire Wire Line
	11800 6050 11800 5450
Wire Wire Line
	11800 5050 12000 5050
Wire Wire Line
	11600 4950 11600 4850
Wire Wire Line
	11600 4850 12000 4850
Wire Wire Line
	12000 4950 11700 4950
Wire Wire Line
	11700 4950 11700 5050
Wire Wire Line
	12550 4750 12550 4850
Wire Wire Line
	12550 4850 12500 4850
Wire Wire Line
	11500 4850 11500 4300
Wire Wire Line
	11500 4300 11900 4300
Wire Wire Line
	12800 4300 12800 4950
Wire Wire Line
	12800 4950 12500 4950
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR09
U 1 1 60C33073
P 700 10750
F 0 "#PWR09" H 700 10500 50  0001 C CNN
F 1 "GND" H 705 10577 50  0000 C CNN
F 2 "" H 700 10750 50  0001 C CNN
F 3 "" H 700 10750 50  0001 C CNN
	1    700  10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7100 1350 6900
Wire Wire Line
	1350 6450 1350 6250
Wire Wire Line
	9750 2850 9750 3000
$Comp
L board-rescue:R-Device-transistor_board-rescue R22
U 1 1 60B32A5E
P 9750 2700
F 0 "R22" V 9650 2650 50  0000 L CNN
F 1 "10K" V 9850 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 2700 50  0001 C CNN
F 3 "~" H 9750 2700 50  0001 C CNN
	1    9750 2700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR04
U 1 1 6097C7C2
P 9750 3250
F 0 "#PWR04" H 9750 3000 50  0001 C CNN
F 1 "GND" H 9755 3077 50  0000 C CNN
F 2 "" H 9750 3250 50  0001 C CNN
F 3 "" H 9750 3250 50  0001 C CNN
	1    9750 3250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:Conn_01x02-Connector_Generic J22
U 1 1 607BA595
P 9150 3100
F 0 "J22" H 9068 2775 50  0000 C CNN
F 1 "Conn_01x02" H 9068 2866 50  0001 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9150 3100 50  0001 C CNN
F 3 "~" H 9150 3100 50  0001 C CNN
	1    9150 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 2500 9750 2550
Wire Wire Line
	9350 3000 9750 3000
Wire Wire Line
	9750 3100 9350 3100
Wire Wire Line
	9750 3100 9750 3250
$Comp
L board-rescue:D-Device D35
U 1 1 60D1E1C5
P 700 5300
F 0 "D35" V 654 5379 50  0000 L CNN
F 1 "D" V 745 5379 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 5300 50  0001 C CNN
F 3 "~" H 700 5300 50  0001 C CNN
	1    700  5300
	0    1    1    0   
$EndComp
$Comp
L board-rescue:D-Device D34
U 1 1 60D28718
P 700 5950
F 0 "D34" V 654 6029 50  0000 L CNN
F 1 "D" V 745 6029 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 5950 50  0001 C CNN
F 3 "~" H 700 5950 50  0001 C CNN
	1    700  5950
	0    1    1    0   
$EndComp
$Comp
L board-rescue:D-Device D32
U 1 1 60D29F9B
P 700 7250
F 0 "D32" V 654 7329 50  0000 L CNN
F 1 "D" V 745 7329 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 7250 50  0001 C CNN
F 3 "~" H 700 7250 50  0001 C CNN
	1    700  7250
	0    1    1    0   
$EndComp
Wire Wire Line
	700  7750 700  7550
Wire Wire Line
	700  7100 700  6900
Wire Wire Line
	700  6450 700  6250
Wire Wire Line
	700  5800 700  5600
Connection ~ 700  5600
Wire Wire Line
	700  5600 700  5450
Connection ~ 1350 5600
Connection ~ 1350 6250
Wire Wire Line
	1350 6250 1350 6100
Connection ~ 700  6250
Wire Wire Line
	700  6250 700  6100
Connection ~ 700  6900
Wire Wire Line
	700  6900 700  6750
Connection ~ 1350 6900
Wire Wire Line
	1350 6900 1350 6750
Connection ~ 700  7550
Wire Wire Line
	700  7550 700  7400
Connection ~ 8300 1250
Wire Wire Line
	13050 7200 13050 6250
$Comp
L board-rescue:C-Device-transistor_board-rescue C4
U 1 1 60DA008C
P 3950 1450
F 0 "C4" H 4065 1496 50  0000 L CNN
F 1 "10uF" H 4065 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3988 1300 50  0001 C CNN
F 3 "~" H 3950 1450 50  0001 C CNN
	1    3950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1650 3950 1600
Wire Wire Line
	3950 1300 3950 1250
$Comp
L board-rescue:C-Device-transistor_board-rescue C3
U 1 1 60E805CE
P 3400 1450
F 0 "C3" H 3515 1496 50  0000 L CNN
F 1 "10uF" H 3515 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3438 1300 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1300 3400 1250
Wire Wire Line
	3950 1650 3400 1650
Wire Wire Line
	3400 1650 3400 1600
$Comp
L board-rescue:Conn_01x02-Connector_Generic J10
U 1 1 60EC7B6D
P 800 1000
F 0 "J10" H 800 800 50  0000 C CNN
F 1 "Conn_01x02" H 718 766 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 800 1000 50  0001 C CNN
F 3 "~" H 800 1000 50  0001 C CNN
	1    800  1000
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR02
U 1 1 60ECC521
P 1250 1550
F 0 "#PWR02" H 1250 1300 50  0001 C CNN
F 1 "GND" H 1255 1377 50  0000 C CNN
F 2 "" H 1250 1550 50  0001 C CNN
F 3 "" H 1250 1550 50  0001 C CNN
	1    1250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1550 1250 1400
Wire Wire Line
	1250 1000 1000 1000
Wire Wire Line
	5850 1250 5700 1250
Wire Wire Line
	5700 1150 5700 1250
Connection ~ 3400 1650
Wire Wire Line
	9900 6350 13150 6350
$Comp
L board-rescue:R-Device-transistor_board-rescue R62
U 1 1 609B234B
P 3000 9950
F 0 "R62" V 2900 9900 50  0000 L CNN
F 1 "68K" V 3100 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 9950 50  0001 C CNN
F 3 "~" H 3000 9950 50  0001 C CNN
	1    3000 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R72
U 1 1 60B4ACB8
P 3000 10500
F 0 "R72" V 2900 10450 50  0000 L CNN
F 1 "3K3" V 3000 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2930 10500 50  0001 C CNN
F 3 "~" H 3000 10500 50  0001 C CNN
	1    3000 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 10100 3000 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR035
U 1 1 60B8C101
P 3000 10750
F 0 "#PWR035" H 3000 10500 50  0001 C CNN
F 1 "GND" H 3005 10577 50  0000 C CNN
F 2 "" H 3000 10750 50  0001 C CNN
F 3 "" H 3000 10750 50  0001 C CNN
	1    3000 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 10750 3000 10700
Connection ~ 3000 10250
Wire Wire Line
	3000 10250 3000 10350
$Comp
L board-rescue:R-Device-transistor_board-rescue R63
U 1 1 60BC4346
P 3800 9950
F 0 "R63" V 3700 9900 50  0000 L CNN
F 1 "68K" V 3900 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 9950 50  0001 C CNN
F 3 "~" H 3800 9950 50  0001 C CNN
	1    3800 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R73
U 1 1 60BC4350
P 3800 10500
F 0 "R73" V 3700 10450 50  0000 L CNN
F 1 "3K3" V 3800 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 10500 50  0001 C CNN
F 3 "~" H 3800 10500 50  0001 C CNN
	1    3800 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 10100 3800 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR036
U 1 1 60BC435D
P 3800 10750
F 0 "#PWR036" H 3800 10500 50  0001 C CNN
F 1 "GND" H 3805 10577 50  0000 C CNN
F 2 "" H 3800 10750 50  0001 C CNN
F 3 "" H 3800 10750 50  0001 C CNN
	1    3800 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 10750 3800 10700
Connection ~ 3800 10250
Wire Wire Line
	3800 10250 3800 10350
$Comp
L board-rescue:R-Device-transistor_board-rescue R64
U 1 1 60BF56DA
P 4600 9950
F 0 "R64" V 4500 9900 50  0000 L CNN
F 1 "100K" V 4700 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4530 9950 50  0001 C CNN
F 3 "~" H 4600 9950 50  0001 C CNN
	1    4600 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R74
U 1 1 60BF56E4
P 4600 10500
F 0 "R74" V 4500 10450 50  0000 L CNN
F 1 "3K3" V 4600 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4530 10500 50  0001 C CNN
F 3 "~" H 4600 10500 50  0001 C CNN
	1    4600 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 10100 4600 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR039
U 1 1 60BF56F1
P 4600 10750
F 0 "#PWR039" H 4600 10500 50  0001 C CNN
F 1 "GND" H 4605 10577 50  0000 C CNN
F 2 "" H 4600 10750 50  0001 C CNN
F 3 "" H 4600 10750 50  0001 C CNN
	1    4600 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 10750 4600 10700
Connection ~ 4600 10250
Wire Wire Line
	4600 10250 4600 10350
$Comp
L board-rescue:R-Device-transistor_board-rescue R65
U 1 1 60C1FB66
P 5450 9950
F 0 "R65" V 5350 9900 50  0000 L CNN
F 1 "150K" V 5550 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 9950 50  0001 C CNN
F 3 "~" H 5450 9950 50  0001 C CNN
	1    5450 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R75
U 1 1 60C1FB70
P 5450 10500
F 0 "R75" V 5350 10450 50  0000 L CNN
F 1 "3K3" V 5450 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 10500 50  0001 C CNN
F 3 "~" H 5450 10500 50  0001 C CNN
	1    5450 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 10100 5450 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR040
U 1 1 60C1FB7D
P 5450 10750
F 0 "#PWR040" H 5450 10500 50  0001 C CNN
F 1 "GND" H 5455 10577 50  0000 C CNN
F 2 "" H 5450 10750 50  0001 C CNN
F 3 "" H 5450 10750 50  0001 C CNN
	1    5450 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 10750 5450 10700
Connection ~ 5450 10250
Wire Wire Line
	5450 10250 5450 10350
$Comp
L board-rescue:R-Device-transistor_board-rescue R41
U 1 1 60B68718
P 2450 4650
F 0 "R41" V 2350 4600 50  0000 L CNN
F 1 "68k" V 2550 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2380 4650 50  0001 C CNN
F 3 "~" H 2450 4650 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R42
U 1 1 60B69203
P 2950 4650
F 0 "R42" V 2850 4600 50  0000 L CNN
F 1 "47k" V 3050 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 4650 50  0001 C CNN
F 3 "~" H 2950 4650 50  0001 C CNN
	1    2950 4650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R40
U 1 1 60B59473
P 1950 4650
F 0 "R40" V 1850 4600 50  0000 L CNN
F 1 "100k" V 2050 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 4650 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1950 4650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:TLP222A-Relay_SolidState U89
U 1 1 60DFF7AC
P 2450 3000
F 0 "U89" H 2450 2683 50  0000 C CNN
F 1 "TLP222A" H 2450 2774 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2250 2800 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=17036&prodName=TLP222A" H 2450 3000 50  0001 L CNN
	1    2450 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	700  1900 700  2100
$Comp
L board-rescue:D-Device D89
U 1 1 60EF3888
P 700 2300
F 0 "D89" V 654 2379 50  0000 L CNN
F 1 "D" V 745 2379 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 700 2300 50  0001 C CNN
F 3 "~" H 700 2300 50  0001 C CNN
	1    700  2300
	0    1    1    0   
$EndComp
Wire Wire Line
	700  5600 1350 5600
Wire Wire Line
	700  6250 1350 6250
Wire Wire Line
	700  6900 1350 6900
Wire Wire Line
	700  7550 1350 7550
Wire Wire Line
	1350 5600 1350 5450
Wire Wire Line
	1350 5800 1350 5600
Wire Wire Line
	10050 4650 9900 4650
$Comp
L board-rescue:C-Device-transistor_board-rescue C72
U 1 1 61AA4824
P 3300 10500
F 0 "C72" H 3415 10546 50  0000 L CNN
F 1 "1uF" H 3415 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 10350 50  0001 C CNN
F 3 "~" H 3300 10500 50  0001 C CNN
	1    3300 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 10350 3300 10250
Wire Wire Line
	3000 10250 3300 10250
Wire Wire Line
	3300 10650 3300 10700
Wire Wire Line
	3300 10700 3000 10700
Connection ~ 3000 10700
Wire Wire Line
	3000 10700 3000 10650
$Comp
L board-rescue:C-Device-transistor_board-rescue C74
U 1 1 61BFBC41
P 4900 10500
F 0 "C74" H 5015 10546 50  0000 L CNN
F 1 "1uF" H 5015 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 10350 50  0001 C CNN
F 3 "~" H 4900 10500 50  0001 C CNN
	1    4900 10500
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C75
U 1 1 61BFCBCC
P 5750 10500
F 0 "C75" H 5865 10546 50  0000 L CNN
F 1 "1uF" H 5865 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 10350 50  0001 C CNN
F 3 "~" H 5750 10500 50  0001 C CNN
	1    5750 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 10350 5750 10250
Wire Wire Line
	5450 10250 5750 10250
Wire Wire Line
	5750 10650 5750 10700
Wire Wire Line
	5750 10700 5450 10700
Connection ~ 5450 10700
Wire Wire Line
	5450 10700 5450 10650
Wire Wire Line
	4900 10650 4900 10700
Wire Wire Line
	4900 10700 4600 10700
Connection ~ 4600 10700
Wire Wire Line
	4600 10700 4600 10650
Wire Wire Line
	4900 10350 4900 10250
Wire Wire Line
	4600 10250 4900 10250
Wire Wire Line
	4100 10350 4100 10250
Wire Wire Line
	3800 10250 4100 10250
Wire Wire Line
	4100 10650 4100 10700
Wire Wire Line
	4100 10700 3800 10700
Connection ~ 3800 10700
Wire Wire Line
	3800 10700 3800 10650
Wire Wire Line
	3300 10250 3450 10250
Connection ~ 3300 10250
Wire Wire Line
	4100 10250 4250 10250
Connection ~ 4100 10250
Wire Wire Line
	4900 10250 5050 10250
Connection ~ 4900 10250
Wire Wire Line
	5750 10250 5900 10250
Connection ~ 5750 10250
Text Label 5050 10250 0    50   ~ 0
ADC4
Text Label 4250 10250 0    50   ~ 0
ADC3
Text Label 3450 10250 0    50   ~ 0
ADC2
Wire Wire Line
	9900 5650 10050 5650
Text Label 10050 5650 0    50   ~ 0
ADC2
Wire Wire Line
	9900 5750 10050 5750
Text Label 10050 5750 0    50   ~ 0
ADC3
Wire Wire Line
	9900 5850 10050 5850
Text Label 10050 5850 0    50   ~ 0
ADC4
$Comp
L board-rescue:C-Device-transistor_board-rescue C73
U 1 1 61BFAC71
P 4100 10500
F 0 "C73" H 4215 10546 50  0000 L CNN
F 1 "1uF" H 4215 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 10350 50  0001 C CNN
F 3 "~" H 4100 10500 50  0001 C CNN
	1    4100 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2900 1950 2900
Wire Wire Line
	1950 2900 1950 2450
Wire Wire Line
	700  1900 1950 1900
Wire Wire Line
	1950 3100 2150 3100
Text Label 6600 7100 0    50   ~ 0
PD2
Text Label 6600 6450 0    50   ~ 0
PD3
Text Label 6600 5800 0    50   ~ 0
PD4
Wire Wire Line
	6350 5800 6600 5800
Wire Wire Line
	6350 6450 6600 6450
Wire Wire Line
	6350 7100 6600 7100
Wire Wire Line
	6450 6900 6350 6900
Wire Wire Line
	6850 6900 6750 6900
Wire Wire Line
	6850 6850 6850 6900
$Comp
L board-rescue:R-Device-transistor_board-rescue R82
U 1 1 61A20AE4
P 6600 6900
F 0 "R82" V 6500 6850 50  0000 L CNN
F 1 "220" V 6600 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 6900 50  0001 C CNN
F 3 "~" H 6600 6900 50  0001 C CNN
	1    6600 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6250 6750 6250
Wire Wire Line
	6850 6200 6850 6250
Wire Wire Line
	6850 5600 6750 5600
Wire Wire Line
	6850 5550 6850 5600
Wire Wire Line
	6450 5600 6350 5600
Wire Wire Line
	6450 6250 6350 6250
$Comp
L board-rescue:R-Device-transistor_board-rescue R83
U 1 1 61949A76
P 6600 6250
F 0 "R83" V 6500 6200 50  0000 L CNN
F 1 "220" V 6600 6150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 6250 50  0001 C CNN
F 3 "~" H 6600 6250 50  0001 C CNN
	1    6600 6250
	0    1    1    0   
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R84
U 1 1 61949137
P 6600 5600
F 0 "R84" V 6500 5550 50  0000 L CNN
F 1 "220" V 6600 5500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 5600 50  0001 C CNN
F 3 "~" H 6600 5600 50  0001 C CNN
	1    6600 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 7550 5400 7450
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR045
U 1 1 61784A02
P 5400 8800
F 0 "#PWR045" H 5400 8550 50  0001 C CNN
F 1 "GND" H 5405 8627 50  0000 C CNN
F 2 "" H 5400 8800 50  0001 C CNN
F 3 "" H 5400 8800 50  0001 C CNN
	1    5400 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7150 5400 7100
$Comp
L board-rescue:R-Device-transistor_board-rescue R32
U 1 1 6176759D
P 5400 7300
F 0 "R32" V 5300 7250 50  0000 L CNN
F 1 "100" V 5500 7250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 7300 50  0001 C CNN
F 3 "~" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5500 5400 5600
$Comp
L board-rescue:R-Device-transistor_board-rescue R35
U 1 1 616F6012
P 5400 5350
F 0 "R35" V 5300 5300 50  0000 L CNN
F 1 "100" V 5500 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 5350 50  0001 C CNN
F 3 "~" H 5400 5350 50  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
Connection ~ 5400 6900
Wire Wire Line
	5400 6900 5750 6900
Wire Wire Line
	5400 6800 5400 6900
Wire Wire Line
	5400 6450 5750 6450
Wire Wire Line
	5400 6500 5400 6450
Wire Wire Line
	5400 6150 5400 6250
Wire Wire Line
	5400 5800 5750 5800
Wire Wire Line
	5400 5800 5400 5850
$Comp
L board-rescue:R-Device-transistor_board-rescue R34
U 1 1 61587774
P 5400 6000
F 0 "R34" V 5300 5950 50  0000 L CNN
F 1 "100" V 5500 5950 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 6000 50  0001 C CNN
F 3 "~" H 5400 6000 50  0001 C CNN
	1    5400 6000
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R33
U 1 1 614628DB
P 5400 6650
F 0 "R33" V 5300 6600 50  0000 L CNN
F 1 "100" V 5500 6600 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 6650 50  0001 C CNN
F 3 "~" H 5400 6650 50  0001 C CNN
	1    5400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1150 8450 1250
Wire Wire Line
	8450 1250 8300 1250
$Comp
L board-rescue:LED-Device D29
U 1 1 6318C99F
P 12200 7350
F 0 "D29" V 12239 7233 50  0000 R CNN
F 1 "green" V 12148 7233 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 12200 7350 50  0001 C CNN
F 3 "~" H 12200 7350 50  0001 C CNN
	1    12200 7350
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:D-Device D31
U 1 1 60AE5DC0
P 700 7900
F 0 "D31" V 654 7979 50  0000 L CNN
F 1 "D" V 745 7979 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 7900 50  0001 C CNN
F 3 "~" H 700 7900 50  0001 C CNN
	1    700  7900
	0    1    1    0   
$EndComp
$Comp
L board-rescue:D-Device D30
U 1 1 60AE7BBD
P 700 8550
F 0 "D30" V 654 8629 50  0000 L CNN
F 1 "D" V 745 8629 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 8550 50  0001 C CNN
F 3 "~" H 700 8550 50  0001 C CNN
	1    700  8550
	0    1    1    0   
$EndComp
Wire Wire Line
	700  8050 700  8200
Wire Wire Line
	700  8700 700  8950
Wire Wire Line
	1350 7550 1350 7750
Connection ~ 1350 7550
Wire Wire Line
	1350 8050 1350 8200
Wire Wire Line
	1350 8700 1350 8950
Wire Wire Line
	1350 8950 700  8950
Connection ~ 700  8950
Wire Wire Line
	700  8950 700  10750
Wire Wire Line
	1350 8200 700  8200
Connection ~ 1350 8200
Wire Wire Line
	1350 8200 1350 8400
Connection ~ 700  8200
Wire Wire Line
	700  8200 700  8400
Text Label 6600 7750 0    50   ~ 0
PB1
Wire Wire Line
	6350 7750 6600 7750
Wire Wire Line
	6450 7550 6350 7550
Wire Wire Line
	6850 7550 6750 7550
Wire Wire Line
	6850 7500 6850 7550
$Comp
L board-rescue:R-Device-transistor_board-rescue R81
U 1 1 60C8D791
P 6600 7550
F 0 "R81" V 6500 7500 50  0000 L CNN
F 1 "220" V 6600 7450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 7550 50  0001 C CNN
F 3 "~" H 6600 7550 50  0001 C CNN
	1    6600 7550
	0    1    1    0   
$EndComp
Text Label 6600 8400 0    50   ~ 0
PB0
Wire Wire Line
	6850 8200 6750 8200
Wire Wire Line
	6850 8150 6850 8200
$Comp
L board-rescue:R-Device-transistor_board-rescue R80
U 1 1 60CC21BD
P 6600 8200
F 0 "R80" V 6500 8150 50  0000 L CNN
F 1 "220" V 6600 8100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 8200 50  0001 C CNN
F 3 "~" H 6600 8200 50  0001 C CNN
	1    6600 8200
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 8200 1950 8200
Wire Wire Line
	5750 7550 5400 7550
Wire Wire Line
	5400 7550 2450 7550
Connection ~ 5400 7550
Wire Wire Line
	1350 7550 1350 7400
$Comp
L board-rescue:R-Device-transistor_board-rescue R31
U 1 1 60E493C4
P 5400 7950
F 0 "R31" V 5300 7900 50  0000 L CNN
F 1 "100" V 5500 7900 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 7950 50  0001 C CNN
F 3 "~" H 5400 7950 50  0001 C CNN
	1    5400 7950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R30
U 1 1 60E4A550
P 5400 8600
F 0 "R30" V 5300 8550 50  0000 L CNN
F 1 "100" V 5500 8550 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 8600 50  0001 C CNN
F 3 "~" H 5400 8600 50  0001 C CNN
	1    5400 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 8450 5400 8400
Wire Wire Line
	5400 8100 5400 8200
Wire Wire Line
	5400 7800 5400 7750
Wire Wire Line
	6350 8400 6600 8400
Wire Wire Line
	6450 8200 6350 8200
Wire Wire Line
	5400 8750 5400 8800
$Comp
L board-rescue:R-Device-transistor_board-rescue R61
U 1 1 610A8EEB
P 2200 9950
F 0 "R61" V 2100 9900 50  0000 L CNN
F 1 "33K" V 2300 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 9950 50  0001 C CNN
F 3 "~" H 2200 9950 50  0001 C CNN
	1    2200 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 10100 2200 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR015
U 1 1 610A8F00
P 2200 10750
F 0 "#PWR015" H 2200 10500 50  0001 C CNN
F 1 "GND" H 2205 10577 50  0000 C CNN
F 2 "" H 2200 10750 50  0001 C CNN
F 3 "" H 2200 10750 50  0001 C CNN
	1    2200 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 10750 2200 10700
Connection ~ 2200 10250
Wire Wire Line
	2200 10250 2200 10350
$Comp
L board-rescue:C-Device-transistor_board-rescue C71
U 1 1 610A8F0D
P 2500 10500
F 0 "C71" H 2615 10546 50  0000 L CNN
F 1 "1uF" H 2615 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 10350 50  0001 C CNN
F 3 "~" H 2500 10500 50  0001 C CNN
	1    2500 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 10350 2500 10250
Wire Wire Line
	2200 10250 2500 10250
Wire Wire Line
	2500 10650 2500 10700
Wire Wire Line
	2500 10700 2200 10700
Connection ~ 2200 10700
Wire Wire Line
	2200 10700 2200 10650
Wire Wire Line
	2500 10250 2650 10250
Connection ~ 2500 10250
Text Label 2650 10250 0    50   ~ 0
ADC1
$Comp
L board-rescue:R-Device-transistor_board-rescue R60
U 1 1 6111A2C6
P 1350 9950
F 0 "R60" V 1250 9900 50  0000 L CNN
F 1 "22K" V 1450 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1280 9950 50  0001 C CNN
F 3 "~" H 1350 9950 50  0001 C CNN
	1    1350 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R70
U 1 1 6111A2D0
P 1350 10500
F 0 "R70" V 1250 10450 50  0000 L CNN
F 1 "3K3" V 1350 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1280 10500 50  0001 C CNN
F 3 "~" H 1350 10500 50  0001 C CNN
	1    1350 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 10100 1350 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR01
U 1 1 6111A2DB
P 1350 10750
F 0 "#PWR01" H 1350 10500 50  0001 C CNN
F 1 "GND" H 1355 10577 50  0000 C CNN
F 2 "" H 1350 10750 50  0001 C CNN
F 3 "" H 1350 10750 50  0001 C CNN
	1    1350 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 10750 1350 10700
Connection ~ 1350 10250
Wire Wire Line
	1350 10250 1350 10350
$Comp
L board-rescue:C-Device-transistor_board-rescue C70
U 1 1 6111A2E8
P 1650 10500
F 0 "C70" H 1765 10546 50  0000 L CNN
F 1 "1uF" H 1765 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 10350 50  0001 C CNN
F 3 "~" H 1650 10500 50  0001 C CNN
	1    1650 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 10350 1650 10250
Wire Wire Line
	1350 10250 1650 10250
Wire Wire Line
	1650 10650 1650 10700
Wire Wire Line
	1650 10700 1350 10700
Connection ~ 1350 10700
Wire Wire Line
	1350 10700 1350 10650
Wire Wire Line
	1650 10250 1800 10250
Connection ~ 1650 10250
Text Label 1800 10250 0    50   ~ 0
ADC0
Wire Wire Line
	1350 9800 1350 9450
Wire Wire Line
	1350 9450 1950 9450
Wire Wire Line
	1950 9450 1950 8200
Connection ~ 1950 8200
Wire Wire Line
	1350 6900 2950 6900
Wire Wire Line
	1950 8200 5400 8200
Wire Wire Line
	1350 6250 3400 6250
Wire Wire Line
	2450 4800 2450 5150
Connection ~ 2450 7550
Wire Wire Line
	2450 7550 1350 7550
Wire Wire Line
	2450 9550 2200 9550
Wire Wire Line
	2200 9550 2200 9800
Wire Wire Line
	1350 5600 3850 5600
$Comp
L board-rescue:R-Device-transistor_board-rescue R43
U 1 1 613C81B1
P 3400 4650
F 0 "R43" V 3300 4600 50  0000 L CNN
F 1 "47k" V 3500 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 4650 50  0001 C CNN
F 3 "~" H 3400 4650 50  0001 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R44
U 1 1 61409A62
P 3850 4650
F 0 "R44" V 3750 4600 50  0000 L CNN
F 1 "33k" V 3950 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 4650 50  0001 C CNN
F 3 "~" H 3850 4650 50  0001 C CNN
	1    3850 4650
	1    0    0    -1  
$EndComp
Connection ~ 2950 6900
Wire Wire Line
	2950 6900 5400 6900
Wire Wire Line
	2950 6900 2950 9550
Wire Wire Line
	2950 9550 3000 9550
Wire Wire Line
	3000 9550 3000 9800
Connection ~ 3400 6250
Wire Wire Line
	3400 6250 5400 6250
Wire Wire Line
	3400 6250 3400 9550
Wire Wire Line
	3400 9550 3800 9550
Wire Wire Line
	3800 9550 3800 9800
Wire Wire Line
	4600 9800 4600 9450
Wire Wire Line
	4600 9450 3850 9450
Wire Wire Line
	4300 9350 5450 9350
Wire Wire Line
	5450 9350 5450 9800
Wire Wire Line
	3850 4800 3850 5150
Connection ~ 3850 5600
Wire Wire Line
	3850 5600 5400 5600
$Comp
L board-rescue:R-Device-transistor_board-rescue R50
U 1 1 6163C97D
P 1950 5300
F 0 "R50" V 1850 5250 50  0000 L CNN
F 1 "47k" V 2050 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 5300 50  0001 C CNN
F 3 "~" H 1950 5300 50  0001 C CNN
	1    1950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5150 1950 4800
Wire Wire Line
	1950 5450 1950 8200
$Comp
L board-rescue:R-Device-transistor_board-rescue R71
U 1 1 610A8EF5
P 2200 10500
F 0 "R71" V 2100 10450 50  0000 L CNN
F 1 "3K3" V 2200 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 10500 50  0001 C CNN
F 3 "~" H 2200 10500 50  0001 C CNN
	1    2200 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7550 2450 9550
$Comp
L board-rescue:R-Device-transistor_board-rescue R52
U 1 1 6176B092
P 2950 5300
F 0 "R52" V 2850 5250 50  0000 L CNN
F 1 "47k" V 3050 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 5300 50  0001 C CNN
F 3 "~" H 2950 5300 50  0001 C CNN
	1    2950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5150 2950 4800
Wire Wire Line
	2950 5450 2950 6900
$Comp
L board-rescue:R-Device-transistor_board-rescue R53
U 1 1 61851EBF
P 3400 5300
F 0 "R53" V 3300 5250 50  0000 L CNN
F 1 "4K7" V 3500 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 5300 50  0001 C CNN
F 3 "~" H 3400 5300 50  0001 C CNN
	1    3400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5150 3400 4800
Wire Wire Line
	3400 5450 3400 6250
Wire Wire Line
	9900 5950 10050 5950
Text Label 10050 5950 0    50   ~ 0
ADC5
Wire Wire Line
	9900 6450 10050 6450
Text Label 10050 6450 0    50   ~ 0
PD2
Wire Wire Line
	9900 6550 10050 6550
Text Label 10050 6550 0    50   ~ 0
PD3
Wire Wire Line
	9900 6650 10050 6650
Text Label 10050 6650 0    50   ~ 0
PD4
Wire Wire Line
	9900 6750 10050 6750
Text Label 10050 6750 0    50   ~ 0
PD5
Wire Wire Line
	9900 6850 10050 6850
Text Label 10050 6850 0    50   ~ 0
PD6
Wire Wire Line
	9900 6950 10050 6950
Text Label 10050 6950 0    50   ~ 0
PD7
$Comp
L board-rescue:VCC-power #PWR048
U 1 1 609E6074
P 12550 4750
F 0 "#PWR048" H 12550 4600 50  0001 C CNN
F 1 "VCC" H 12567 4923 50  0000 C CNN
F 2 "" H 12550 4750 50  0001 C CNN
F 3 "" H 12550 4750 50  0001 C CNN
	1    12550 4750
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR057
U 1 1 609E63CE
P 8450 1150
F 0 "#PWR057" H 8450 1000 50  0001 C CNN
F 1 "VCC" H 8467 1323 50  0000 C CNN
F 2 "" H 8450 1150 50  0001 C CNN
F 3 "" H 8450 1150 50  0001 C CNN
	1    8450 1150
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR032
U 1 1 609E68D0
P 9300 3900
F 0 "#PWR032" H 9300 3750 50  0001 C CNN
F 1 "VCC" H 9317 4073 50  0000 C CNN
F 2 "" H 9300 3900 50  0001 C CNN
F 3 "" H 9300 3900 50  0001 C CNN
	1    9300 3900
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR041
U 1 1 609E7053
P 9750 2500
F 0 "#PWR041" H 9750 2350 50  0001 C CNN
F 1 "VCC" H 9767 2673 50  0000 C CNN
F 2 "" H 9750 2500 50  0001 C CNN
F 3 "" H 9750 2500 50  0001 C CNN
	1    9750 2500
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR017
U 1 1 609E80EC
P 6850 5550
F 0 "#PWR017" H 6850 5400 50  0001 C CNN
F 1 "VCC" H 6867 5723 50  0000 C CNN
F 2 "" H 6850 5550 50  0001 C CNN
F 3 "" H 6850 5550 50  0001 C CNN
	1    6850 5550
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR024
U 1 1 609E81C9
P 6850 6200
F 0 "#PWR024" H 6850 6050 50  0001 C CNN
F 1 "VCC" H 6867 6373 50  0000 C CNN
F 2 "" H 6850 6200 50  0001 C CNN
F 3 "" H 6850 6200 50  0001 C CNN
	1    6850 6200
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR025
U 1 1 609E82A6
P 6850 6850
F 0 "#PWR025" H 6850 6700 50  0001 C CNN
F 1 "VCC" H 6867 7023 50  0000 C CNN
F 2 "" H 6850 6850 50  0001 C CNN
F 3 "" H 6850 6850 50  0001 C CNN
	1    6850 6850
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR028
U 1 1 609E8383
P 6850 7500
F 0 "#PWR028" H 6850 7350 50  0001 C CNN
F 1 "VCC" H 6867 7673 50  0000 C CNN
F 2 "" H 6850 7500 50  0001 C CNN
F 3 "" H 6850 7500 50  0001 C CNN
	1    6850 7500
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR029
U 1 1 609E87A8
P 6850 8150
F 0 "#PWR029" H 6850 8000 50  0001 C CNN
F 1 "VCC" H 6867 8323 50  0000 C CNN
F 2 "" H 6850 8150 50  0001 C CNN
F 3 "" H 6850 8150 50  0001 C CNN
	1    6850 8150
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:VCC-power #PWR051
U 1 1 609E969D
P 4400 2150
F 0 "#PWR051" H 4400 2000 50  0001 C CNN
F 1 "VCC" H 4417 2323 50  0000 C CNN
F 2 "" H 4400 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0001 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5150 11550 5150
Wire Wire Line
	11250 5750 11250 5700
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR07
U 1 1 6064C72C
P 11250 5750
F 0 "#PWR07" H 11250 5500 50  0001 C CNN
F 1 "GND" H 11255 5577 50  0000 C CNN
F 2 "" H 11250 5750 50  0001 C CNN
F 3 "" H 11250 5750 50  0001 C CNN
	1    11250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 5500 11100 5500
Wire Wire Line
	10950 5250 10950 5500
Wire Wire Line
	9900 5250 10950 5250
Wire Wire Line
	11550 5500 11550 5150
Wire Wire Line
	11400 5500 11550 5500
$Comp
L board-rescue:Crystal_GND2-Device Y20
U 1 1 6061CFF7
P 11250 5500
F 0 "Y20" H 11250 5768 50  0000 C CNN
F 1 "Crystal_GND2" H 11250 5677 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W7.0mm_H2.5mm" H 11250 5500 50  0001 C CNN
F 3 "~" H 11250 5500 50  0001 C CNN
	1    11250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 5450 11800 5450
Connection ~ 11800 5450
Wire Wire Line
	11800 5450 11800 5050
Wire Wire Line
	12200 5450 12200 5500
Wire Wire Line
	4400 2150 4400 2200
Text Notes 11400 5650 0    50   ~ 0
7,37MHz
Wire Wire Line
	14550 7300 14700 7300
Wire Wire Line
	14550 6950 14550 7300
Wire Wire Line
	14550 7400 14700 7400
Wire Wire Line
	14550 7450 14550 7400
Text Notes 13600 8400 0    50   ~ 0
Serial port, signals expected to be 3.3 Volt levels.\npin 4 serial out (from Atmega)\npin 3 serial in (to Atmega)\npin 2 3.3 Volt out\npin 1 GND
$Comp
L board-rescue:Conn_01x04-Connector_Generic J79
U 1 1 60CB8E64
P 14900 7300
F 0 "J79" H 14850 7000 50  0000 L CNN
F 1 "Conn_01x04" H 14750 7550 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 14900 7300 50  0001 C CNN
F 3 "~" H 14900 7300 50  0001 C CNN
	1    14900 7300
	1    0    0    1   
$EndComp
Wire Wire Line
	13700 7200 13050 7200
Wire Wire Line
	13700 7350 13700 7200
Wire Wire Line
	13850 7350 13700 7350
Wire Wire Line
	14250 7200 14700 7200
Wire Wire Line
	14250 7350 14250 7200
Wire Wire Line
	14150 7350 14250 7350
$Comp
L board-rescue:R-Device-transistor_board-rescue R79
U 1 1 60B318BE
P 14000 7350
F 0 "R79" V 13900 7300 50  0000 L CNN
F 1 "27" V 14000 7250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13930 7350 50  0001 C CNN
F 3 "~" H 14000 7350 50  0001 C CNN
	1    14000 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	13150 7100 13150 6350
Wire Wire Line
	13850 7100 13150 7100
Wire Wire Line
	14150 7100 14700 7100
$Comp
L board-rescue:R-Device-transistor_board-rescue R78
U 1 1 60AA364F
P 14000 7100
F 0 "R78" V 13900 7050 50  0000 L CNN
F 1 "27" V 14000 7000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13930 7100 50  0001 C CNN
F 3 "~" H 14000 7100 50  0001 C CNN
	1    14000 7100
	0    1    1    0   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR056
U 1 1 60D677CB
P 14550 7450
F 0 "#PWR056" H 14550 7200 50  0001 C CNN
F 1 "GND" H 14555 7277 50  0000 C CNN
F 2 "" H 14550 7450 50  0001 C CNN
F 3 "" H 14550 7450 50  0001 C CNN
	1    14550 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12200 7500 12200 7600
Wire Wire Line
	12200 7600 11800 7600
Wire Wire Line
	12200 7200 12200 7150
Wire Wire Line
	9900 4950 10550 4950
$Comp
L board-rescue:R-Device-transistor_board-rescue R88
U 1 1 60AA7F46
P 1950 2300
F 0 "R88" V 1850 2250 50  0000 L CNN
F 1 "33 Ohm, >=10 W" V 2050 2000 50  0000 L CNN
F 2 "eit_footprints:TO-220-2_with_heatsink_V8508B" V 1880 2300 50  0001 C CNN
F 3 "~" H 1950 2300 50  0001 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
Text Label 10050 4650 0    50   ~ 0
PB1
Wire Wire Line
	10550 4950 10550 3000
Wire Wire Line
	10550 3000 9750 3000
Connection ~ 10550 4950
Wire Wire Line
	10550 4950 11600 4950
Connection ~ 9750 3000
Wire Wire Line
	5700 1250 5100 1250
Wire Wire Line
	1800 1250 1950 1250
Wire Wire Line
	1950 1900 1950 1250
Connection ~ 1950 1900
$Comp
L eit_proprietary:Fuse-Device F1
U 1 1 60E66784
P 3000 1250
F 0 "F1" V 2803 1250 50  0000 C CNN
F 1 "Fuse-Device" V 2894 1250 50  0000 C CNN
F 2 "eit_footprints:Varistor_RV_Disc_D9mm_W5.7mm_P5mm" V 2930 1250 50  0001 C CNN
F 3 "" H 3000 1250 50  0001 C CNN
	1    3000 1250
	0    1    1    0   
$EndComp
Text Notes 13200 7850 0    50   ~ 0
22 or 33 Ohm will do fine \nif 27 Ohm is not in stock.
$Comp
L board-rescue:Conn_01x02-Connector_Generic J14
U 1 1 60B007CE
P 7800 10000
F 0 "J14" H 7800 9800 50  0000 C CNN
F 1 "Conn_01x02" H 7718 9766 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 7800 10000 50  0001 C CNN
F 3 "~" H 7800 10000 50  0001 C CNN
	1    7800 10000
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR026
U 1 1 60B014AA
P 8300 10050
F 0 "#PWR026" H 8300 9800 50  0001 C CNN
F 1 "GND" H 8305 9877 50  0000 C CNN
F 2 "" H 8300 10050 50  0001 C CNN
F 3 "" H 8300 10050 50  0001 C CNN
	1    8300 10050
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:+BATT-power #PWR013
U 1 1 60B35AC6
P 8650 9450
F 0 "#PWR013" H 8650 9300 50  0001 C CNN
F 1 "+BATT" H 8665 9623 50  0000 C CNN
F 2 "" H 8650 9450 50  0001 C CNN
F 3 "" H 8650 9450 50  0001 C CNN
	1    8650 9450
	1    0    0    -1  
$EndComp
Text Notes 7350 10000 0    50   ~ 0
Main\n24 Volt\npower out
Wire Wire Line
	8300 10050 8300 10000
Wire Wire Line
	8650 9700 8700 9700
$Comp
L board-rescue:VCC-power #PWR08
U 1 1 609EA3C8
P 3400 2850
F 0 "#PWR08" H 3400 2700 50  0001 C CNN
F 1 "VCC" H 3417 3023 50  0000 C CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2850 3400 2900
$Comp
L board-rescue:R-Device-transistor_board-rescue R14
U 1 1 612CBE80
P 9950 9900
F 0 "R14" V 9850 9850 50  0000 L CNN
F 1 "220" V 9950 9800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9880 9900 50  0001 C CNN
F 3 "~" H 9950 9900 50  0001 C CNN
	1    9950 9900
	0    1    1    0   
$EndComp
$Comp
L board-rescue:VCC-power #PWR050
U 1 1 613F59E8
P 9700 9650
F 0 "#PWR050" H 9700 9500 50  0001 C CNN
F 1 "VCC" H 9717 9823 50  0000 C CNN
F 2 "" H 9700 9650 50  0001 C CNN
F 3 "" H 9700 9650 50  0001 C CNN
	1    9700 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 9650 9700 9700
Wire Wire Line
	9700 9700 9300 9700
Wire Wire Line
	9800 9900 9300 9900
Wire Wire Line
	1350 5150 1350 4950
Connection ~ 1350 4950
Connection ~ 700  4950
Wire Wire Line
	700  2450 700  2500
Wire Wire Line
	700  4950 700  5150
Wire Wire Line
	700  4950 1350 4950
Wire Wire Line
	4300 4950 4300 9350
Wire Wire Line
	5400 5150 5400 5200
$Comp
L board-rescue:VCC-power #PWR011
U 1 1 609E797F
P 6850 4900
F 0 "#PWR011" H 6850 4750 50  0001 C CNN
F 1 "VCC" H 6867 5073 50  0000 C CNN
F 2 "" H 6850 4900 50  0001 C CNN
F 3 "" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R85
U 1 1 61946505
P 6600 4950
F 0 "R85" V 6500 4900 50  0000 L CNN
F 1 "220" V 6600 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 4950 50  0001 C CNN
F 3 "~" H 6600 4950 50  0001 C CNN
	1    6600 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4950 6350 4950
Wire Wire Line
	6850 4900 6850 4950
Wire Wire Line
	6850 4950 6750 4950
Wire Wire Line
	6350 5150 6600 5150
Text Label 6600 5150 0    50   ~ 0
PD5
$Comp
L board-rescue:Conn_01x02-Connector_Generic J13
U 1 1 61BAD695
P 7800 10950
F 0 "J13" H 7800 10750 50  0000 C CNN
F 1 "Conn_01x02" H 7718 10716 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 7800 10950 50  0001 C CNN
F 3 "~" H 7800 10950 50  0001 C CNN
	1    7800 10950
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR064
U 1 1 61BAD69F
P 8300 11000
F 0 "#PWR064" H 8300 10750 50  0001 C CNN
F 1 "GND" H 8305 10827 50  0000 C CNN
F 2 "" H 8300 11000 50  0001 C CNN
F 3 "" H 8300 11000 50  0001 C CNN
	1    8300 11000
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:+BATT-power #PWR065
U 1 1 61BAD6A9
P 8650 10400
F 0 "#PWR065" H 8650 10250 50  0001 C CNN
F 1 "+BATT" H 8665 10573 50  0000 C CNN
F 2 "" H 8650 10400 50  0001 C CNN
F 3 "" H 8650 10400 50  0001 C CNN
	1    8650 10400
	1    0    0    -1  
$EndComp
Text Notes 7350 10950 0    50   ~ 0
Non prio\n24 Volt\npower out
$Comp
L board-rescue:TLP222A-Relay_SolidState U13
U 1 1 61BAD6B5
P 9000 10750
F 0 "U13" H 9000 10433 50  0000 C CNN
F 1 "TLP222A" H 9000 10524 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8800 10550 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=17036&prodName=TLP222A" H 9000 10750 50  0001 L CNN
	1    9000 10750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 11000 8300 10950
Wire Wire Line
	8650 10650 8700 10650
$Comp
L board-rescue:R-Device-transistor_board-rescue R13
U 1 1 61BAD6C3
P 9950 10850
F 0 "R13" V 9850 10800 50  0000 L CNN
F 1 "220" V 9950 10750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9880 10850 50  0001 C CNN
F 3 "~" H 9950 10850 50  0001 C CNN
	1    9950 10850
	0    1    1    0   
$EndComp
$Comp
L board-rescue:VCC-power #PWR067
U 1 1 61BAD6CD
P 9700 10600
F 0 "#PWR067" H 9700 10450 50  0001 C CNN
F 1 "VCC" H 9717 10773 50  0000 C CNN
F 2 "" H 9700 10600 50  0001 C CNN
F 3 "" H 9700 10600 50  0001 C CNN
	1    9700 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 10600 9700 10650
Wire Wire Line
	9700 10650 9300 10650
Wire Wire Line
	9800 10850 9300 10850
Wire Wire Line
	9900 6250 13050 6250
Wire Wire Line
	10650 4750 10650 9900
Wire Wire Line
	10650 4750 9900 4750
$Comp
L board-rescue:D-Device D33
U 1 1 60D29879
P 700 6600
F 0 "D33" V 654 6679 50  0000 L CNN
F 1 "D" V 745 6679 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 6600 50  0001 C CNN
F 3 "~" H 700 6600 50  0001 C CNN
	1    700  6600
	0    1    1    0   
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R18
U 1 1 60C37C30
P 7800 1500
F 0 "R18" V 7700 1450 50  0000 L CNN
F 1 "330" V 7800 1400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 1500 50  0001 C CNN
F 3 "~" H 7800 1500 50  0001 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1650 7800 1800
$Comp
L board-rescue:C-Device-transistor_board-rescue C5
U 1 1 60CE55FE
P 4500 1450
F 0 "C5" H 4615 1496 50  0000 L CNN
F 1 "10uF" H 4615 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4538 1300 50  0001 C CNN
F 3 "~" H 4500 1450 50  0001 C CNN
	1    4500 1450
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C6
U 1 1 60CE63A1
P 5100 1450
F 0 "C6" H 5215 1496 50  0000 L CNN
F 1 "10uF" H 5215 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5138 1300 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1250 4500 1250
Wire Wire Line
	4500 1250 4500 1300
Connection ~ 3950 1250
Wire Wire Line
	4500 1250 5100 1250
Wire Wire Line
	5100 1250 5100 1300
Connection ~ 4500 1250
Wire Wire Line
	4500 1600 4500 1650
Wire Wire Line
	4500 1650 3950 1650
Connection ~ 3950 1650
Wire Wire Line
	5100 1600 5100 1650
Connection ~ 4500 1650
Wire Wire Line
	4500 1650 5100 1650
$Comp
L board-rescue:R-Device-transistor_board-rescue R28
U 1 1 60F26169
P 12200 7000
F 0 "R28" V 12100 6950 50  0000 L CNN
F 1 "470" V 12200 6900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12130 7000 50  0001 C CNN
F 3 "~" H 12200 7000 50  0001 C CNN
	1    12200 7000
	1    0    0    -1  
$EndComp
Connection ~ 5100 1250
Wire Wire Line
	3400 1250 3950 1250
Wire Wire Line
	3150 1250 3400 1250
Connection ~ 3400 1250
Wire Wire Line
	2850 1250 2650 1250
Connection ~ 1950 1250
Wire Wire Line
	1950 2150 1950 1900
$Comp
L board-rescue:C-Device-transistor_board-rescue C7
U 1 1 612E1DDE
P 2650 1450
F 0 "C7" H 2765 1496 50  0000 L CNN
F 1 "1uF" H 2765 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2688 1300 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1300 2650 1250
Connection ~ 2650 1250
Wire Wire Line
	2650 1250 1950 1250
Wire Wire Line
	2650 1600 2650 1650
Wire Wire Line
	2650 1650 3400 1650
$Comp
L board-rescue:TLP222A-Relay_SolidState U14
U 1 1 60AEAB71
P 9000 9800
F 0 "U14" H 9000 9483 50  0000 C CNN
F 1 "TLP222A" H 9000 9574 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8800 9600 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=17036&prodName=TLP222A" H 9000 9800 50  0001 L CNN
	1    9000 9800
	-1   0    0    -1  
$EndComp
$Comp
L board-rescue:D-Device D1
U 1 1 60F46E18
P 1650 1250
F 0 "D1" V 1604 1329 50  0000 L CNN
F 1 "D" V 1695 1329 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 1650 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:Conn_01x02-Connector_Generic J11
U 1 1 60B99A41
P 800 1400
F 0 "J11" H 800 1200 50  0000 C CNN
F 1 "Conn_01x02" H 718 1166 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 800 1400 50  0001 C CNN
F 3 "~" H 800 1400 50  0001 C CNN
	1    800  1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2900 3300 2900
Wire Wire Line
	3000 2900 2750 2900
$Comp
L board-rescue:R-Device-transistor_board-rescue R89
U 1 1 6204C895
P 3150 2900
F 0 "R89" V 3050 2850 50  0000 L CNN
F 1 "220" V 3150 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 2900 50  0001 C CNN
F 3 "~" H 3150 2900 50  0001 C CNN
	1    3150 2900
	0    1    1    0   
$EndComp
Text Label 2900 3100 0    50   ~ 0
PD7
Wire Wire Line
	2900 3100 2750 3100
Wire Wire Line
	8700 4850 8550 4850
Text Label 8550 4850 2    50   ~ 0
ADC7
Wire Wire Line
	8700 4750 8550 4750
Text Label 8550 4750 2    50   ~ 0
ADC6
Wire Wire Line
	8100 4550 8700 4550
Wire Wire Line
	9900 5050 10850 5050
Connection ~ 10850 5050
Wire Wire Line
	10850 5050 11700 5050
$Comp
L board-rescue:D-Device D5
U 1 1 60C52DED
P 1650 900
F 0 "D5" V 1604 979 50  0000 L CNN
F 1 "D" V 1695 979 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1650 900 50  0001 C CNN
F 3 "~" H 1650 900 50  0001 C CNN
	1    1650 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 900  1950 900 
Wire Wire Line
	1950 900  1950 1250
Wire Wire Line
	1500 900  1350 900 
Wire Wire Line
	1350 900  1350 1250
Wire Wire Line
	1350 1250 1500 1250
$Comp
L board-rescue:D-Device D88
U 1 1 60D9A3CF
P 1100 2300
F 0 "D88" V 1054 2379 50  0000 L CNN
F 1 "D" V 1145 2379 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1100 2300 50  0001 C CNN
F 3 "~" H 1100 2300 50  0001 C CNN
	1    1100 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2150 1100 2100
Wire Wire Line
	1100 2100 700  2100
Connection ~ 700  2100
Wire Wire Line
	700  2100 700  2150
Wire Wire Line
	1100 2450 1100 2500
Wire Wire Line
	1100 2500 700  2500
Connection ~ 700  2500
Wire Wire Line
	700  2500 700  4300
Text Notes 1350 700  0    50   ~ 0
Use D1 or D5 depending on available components.
Text Notes 750  2800 0    50   ~ 0
Use D89 or D88 depending\n on available components.
$Comp
L board-rescue:TLP222A-Relay_SolidState U15
U 1 1 60BBEDD8
P 9000 8750
F 0 "U15" H 9000 8433 50  0000 C CNN
F 1 "TLP222A" H 9000 8524 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8800 8550 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=17036&prodName=TLP222A" H 9000 8750 50  0001 L CNN
	1    9000 8750
	-1   0    0    -1  
$EndComp
$Comp
L board-rescue:Conn_01x02-Connector_Generic J15
U 1 1 60BBEDE2
P 7800 8700
F 0 "J15" H 7800 8500 50  0000 C CNN
F 1 "Conn_01x02" H 7718 8466 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 7800 8700 50  0001 C CNN
F 3 "~" H 7800 8700 50  0001 C CNN
	1    7800 8700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 8700 8550 8650
Wire Wire Line
	8550 8650 8700 8650
Wire Wire Line
	8700 8850 8550 8850
Wire Wire Line
	8550 8850 8550 8800
$Comp
L board-rescue:VCC-power #PWR062
U 1 1 60BBEDF0
P 9700 8600
F 0 "#PWR062" H 9700 8450 50  0001 C CNN
F 1 "VCC" H 9717 8773 50  0000 C CNN
F 2 "" H 9700 8600 50  0001 C CNN
F 3 "" H 9700 8600 50  0001 C CNN
	1    9700 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 8600 9700 8650
Wire Wire Line
	9700 8650 9300 8650
$Comp
L board-rescue:R-Device-transistor_board-rescue R15
U 1 1 60BBEDFC
P 10000 8850
F 0 "R15" V 9900 8800 50  0000 L CNN
F 1 "220" V 10000 8750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9930 8850 50  0001 C CNN
F 3 "~" H 10000 8850 50  0001 C CNN
	1    10000 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 8850 9850 8850
Wire Wire Line
	8000 8700 8550 8700
Wire Wire Line
	8000 8800 8550 8800
Text Label 10050 5550 0    50   ~ 0
ADC1
Wire Wire Line
	10050 5550 9900 5550
$Comp
L board-rescue:R-Device-transistor_board-rescue R3
U 1 1 60E8F452
P 5400 2800
F 0 "R3" V 5300 2750 50  0000 L CNN
F 1 "150K" V 5500 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5330 2800 50  0001 C CNN
F 3 "~" H 5400 2800 50  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R5
U 1 1 60E8F45C
P 5400 3350
F 0 "R5" V 5300 3300 50  0000 L CNN
F 1 "3.3K" V 5500 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5330 3350 50  0001 C CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2950 5400 3100
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR071
U 1 1 60E8F467
P 5400 3600
F 0 "#PWR071" H 5400 3350 50  0001 C CNN
F 1 "GND" H 5405 3427 50  0000 C CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3600 5400 3550
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5400 3200
$Comp
L board-rescue:C-Device-transistor_board-rescue C1
U 1 1 60E8F474
P 5700 3350
F 0 "C1" H 5815 3396 50  0000 L CNN
F 1 "1uF" H 5815 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5738 3200 50  0001 C CNN
F 3 "~" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3200 5700 3100
Wire Wire Line
	5400 3100 5700 3100
Wire Wire Line
	5700 3500 5700 3550
Wire Wire Line
	5700 3550 5400 3550
Connection ~ 5400 3550
Wire Wire Line
	5400 3550 5400 3500
Wire Wire Line
	5700 3100 5850 3100
Connection ~ 5700 3100
Text Label 5850 3100 0    50   ~ 0
ADC7
Wire Wire Line
	5400 2550 5400 2650
$Comp
L board-rescue:+BATT-power #PWR070
U 1 1 60F075DA
P 5400 2550
F 0 "#PWR070" H 5400 2400 50  0001 C CNN
F 1 "+BATT" H 5415 2723 50  0000 C CNN
F 2 "" H 5400 2550 50  0001 C CNN
F 3 "" H 5400 2550 50  0001 C CNN
	1    5400 2550
	1    0    0    -1  
$EndComp
Text Notes 7500 8750 0    50   ~ 0
Loop
Wire Wire Line
	9900 4850 11500 4850
$Comp
L board-rescue:VCC-power #PWR03
U 1 1 610DBCB8
P 12200 6700
F 0 "#PWR03" H 12200 6550 50  0001 C CNN
F 1 "VCC" H 12217 6873 50  0000 C CNN
F 2 "" H 12200 6700 50  0001 C CNN
F 3 "" H 12200 6700 50  0001 C CNN
	1    12200 6700
	1    0    0    -1  
$EndComp
$Comp
L eit_proprietary:ATmega328-AU U20
U 1 1 60C7CEE0
P 9300 5750
F 0 "U20" H 8950 4250 50  0000 C CNN
F 1 "ATmega328-AU" H 9650 4250 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 9300 5750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 9300 5750 50  0001 C CNN
	1    9300 5750
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX232 U90
U 1 1 60D08FDA
P 13400 2050
F 0 "U90" H 13400 3431 50  0000 C CNN
F 1 "MAX232" H 13400 3340 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 13450 1000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 13400 2150 50  0001 C CNN
	1    13400 2050
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C91
U 1 1 60D16A78
P 12250 1300
F 0 "C91" H 12365 1346 50  0000 L CNN
F 1 "0.1uF" H 12365 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12288 1150 50  0001 C CNN
F 3 "~" H 12250 1300 50  0001 C CNN
	1    12250 1300
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C92
U 1 1 60D18841
P 14450 1300
F 0 "C92" H 14565 1346 50  0000 L CNN
F 1 "0.1uF" H 14565 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14488 1150 50  0001 C CNN
F 3 "~" H 14450 1300 50  0001 C CNN
	1    14450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 1450 14250 1500
Wire Wire Line
	14250 1500 14450 1500
Wire Wire Line
	14450 1500 14450 1450
Wire Wire Line
	14200 1450 14250 1450
Wire Wire Line
	14450 1150 14450 1100
Wire Wire Line
	14450 1100 14250 1100
Wire Wire Line
	14250 1100 14250 1150
Wire Wire Line
	14250 1150 14200 1150
Wire Wire Line
	12600 1150 12550 1150
Wire Wire Line
	12550 1150 12550 1100
Wire Wire Line
	12550 1100 12250 1100
Wire Wire Line
	12250 1100 12250 1150
Wire Wire Line
	12250 1450 12250 1500
Wire Wire Line
	12250 1500 12550 1500
Wire Wire Line
	12550 1500 12550 1450
Wire Wire Line
	12550 1450 12600 1450
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR021
U 1 1 610391BD
P 13400 3350
F 0 "#PWR021" H 13400 3100 50  0001 C CNN
F 1 "GND" H 13405 3177 50  0000 C CNN
F 2 "" H 13400 3350 50  0001 C CNN
F 3 "" H 13400 3350 50  0001 C CNN
	1    13400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 3350 13400 3250
Wire Wire Line
	15450 2100 15450 2000
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR043
U 1 1 610AD7D8
P 15450 2100
F 0 "#PWR043" H 15450 1850 50  0001 C CNN
F 1 "GND" H 15455 1927 50  0000 C CNN
F 2 "" H 15450 2100 50  0001 C CNN
F 3 "" H 15450 2100 50  0001 C CNN
	1    15450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 2350 15050 2250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR042
U 1 1 6106FC3E
P 15050 2350
F 0 "#PWR042" H 15050 2100 50  0001 C CNN
F 1 "GND" H 15055 2177 50  0000 C CNN
F 2 "" H 15050 2350 50  0001 C CNN
F 3 "" H 15050 2350 50  0001 C CNN
	1    15050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 1600 15450 1700
Wire Wire Line
	15200 1600 15450 1600
Wire Wire Line
	15200 1650 15200 1600
Wire Wire Line
	14200 1650 15200 1650
Wire Wire Line
	15050 1900 15050 1950
Wire Wire Line
	14850 1900 15050 1900
Wire Wire Line
	14850 1950 14850 1900
Wire Wire Line
	14200 1950 14850 1950
$Comp
L board-rescue:C-Device-transistor_board-rescue C94
U 1 1 60D1A950
P 15050 2100
F 0 "C94" H 15165 2146 50  0000 L CNN
F 1 "0.1uF" H 15165 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 15088 1950 50  0001 C CNN
F 3 "~" H 15050 2100 50  0001 C CNN
	1    15050 2100
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C93
U 1 1 60D19AED
P 15450 1850
F 0 "C93" H 15565 1896 50  0000 L CNN
F 1 "0.1uF" H 15565 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 15488 1700 50  0001 C CNN
F 3 "~" H 15450 1850 50  0001 C CNN
	1    15450 1850
	1    0    0    -1  
$EndComp
Connection ~ 13150 6350
Wire Wire Line
	12600 2550 12000 2550
Connection ~ 13050 6250
Wire Wire Line
	12500 3150 12500 3100
Wire Wire Line
	12500 2750 12600 2750
$Comp
L board-rescue:R-Device-transistor_board-rescue R91
U 1 1 6123FE74
P 12500 2950
F 0 "R91" V 12400 2900 50  0000 L CNN
F 1 "220" V 12500 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12430 2950 50  0001 C CNN
F 3 "~" H 12500 2950 50  0001 C CNN
	1    12500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 2800 12500 2750
$Comp
L board-rescue:VCC-power #PWR014
U 1 1 612E5EC7
P 12700 3450
F 0 "#PWR014" H 12700 3300 50  0001 C CNN
F 1 "VCC" H 12717 3623 50  0000 C CNN
F 2 "" H 12700 3450 50  0001 C CNN
F 3 "" H 12700 3450 50  0001 C CNN
	1    12700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 3500 12500 3500
Wire Wire Line
	12500 3450 12500 3500
Wire Wire Line
	12700 3450 12700 3500
Wire Wire Line
	14200 2550 14600 2550
Wire Wire Line
	14600 2550 14600 2750
Wire Wire Line
	14600 2750 14200 2750
$Comp
L Connector_Generic:Conn_01x05 J90
U 1 1 613C790B
P 15300 3150
F 0 "J90" H 15218 2725 50  0000 C CNN
F 1 "Conn_01x05" H 15218 2816 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 15300 3150 50  0001 C CNN
F 3 "~" H 15300 3150 50  0001 C CNN
	1    15300 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	14950 3350 15100 3350
Wire Wire Line
	14950 3400 14950 3350
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR033
U 1 1 613FFB1A
P 14950 3400
F 0 "#PWR033" H 14950 3150 50  0001 C CNN
F 1 "GND" H 14955 3227 50  0000 C CNN
F 2 "" H 14950 3400 50  0001 C CNN
F 3 "" H 14950 3400 50  0001 C CNN
	1    14950 3400
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:+BATT-power #PWR031
U 1 1 614722C8
P 14400 3400
F 0 "#PWR031" H 14400 3250 50  0001 C CNN
F 1 "+BATT" H 14415 3573 50  0000 C CNN
F 2 "" H 14400 3400 50  0001 C CNN
F 3 "" H 14400 3400 50  0001 C CNN
	1    14400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 3400 14400 3450
Wire Wire Line
	15100 3250 14750 3250
Wire Wire Line
	14750 3250 14750 3450
Wire Wire Line
	14750 3450 14400 3450
Wire Wire Line
	15100 3150 14600 3150
Wire Wire Line
	14600 3150 14600 2750
Connection ~ 14600 2750
Wire Wire Line
	15100 3050 14800 3050
Wire Wire Line
	14800 3050 14800 2150
Wire Wire Line
	14800 2150 14200 2150
Wire Wire Line
	15100 2950 14700 2950
Wire Wire Line
	14700 2950 14700 2350
Wire Wire Line
	14700 2350 14200 2350
Connection ~ 4300 4950
Wire Wire Line
	5400 8400 5750 8400
Wire Wire Line
	5400 7750 5750 7750
Wire Wire Line
	5400 7100 5750 7100
Wire Wire Line
	5400 6250 5750 6250
Connection ~ 5400 6250
Wire Wire Line
	5400 5600 5750 5600
Connection ~ 5400 5600
Wire Wire Line
	4300 4950 4500 4950
Wire Wire Line
	5750 5150 5400 5150
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U35
U 1 1 60CB3432
P 6050 5050
F 0 "U35" H 6050 5323 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 5324 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 5050 50  0001 C CNN
F 3 "" H 6050 5050 50  0001 C CNN
	1    6050 5050
	-1   0    0    -1  
$EndComp
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U34
U 1 1 60CF117A
P 6050 5700
F 0 "U34" H 6050 5973 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 5974 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 5700 50  0001 C CNN
F 3 "" H 6050 5700 50  0001 C CNN
	1    6050 5700
	-1   0    0    -1  
$EndComp
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U33
U 1 1 60CF9046
P 6050 6350
F 0 "U33" H 6050 6623 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 6624 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 6350 50  0001 C CNN
F 3 "" H 6050 6350 50  0001 C CNN
	1    6050 6350
	-1   0    0    -1  
$EndComp
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U32
U 1 1 60CFA5AE
P 6050 7000
F 0 "U32" H 6050 7273 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 7274 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 7000 50  0001 C CNN
F 3 "" H 6050 7000 50  0001 C CNN
	1    6050 7000
	-1   0    0    -1  
$EndComp
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U31
U 1 1 60CFB43C
P 6050 7650
F 0 "U31" H 6050 7923 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 7924 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 7650 50  0001 C CNN
F 3 "" H 6050 7650 50  0001 C CNN
	1    6050 7650
	-1   0    0    -1  
$EndComp
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U30
U 1 1 60CFC3FB
P 6050 8300
F 0 "U30" H 6050 8573 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 8574 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 8300 50  0001 C CNN
F 3 "" H 6050 8300 50  0001 C CNN
	1    6050 8300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 8200 5400 8200
Connection ~ 5400 8200
$Comp
L board-rescue:LED-Device D91
U 1 1 6123FE67
P 12500 3300
F 0 "D91" V 12539 3183 50  0000 R CNN
F 1 "amber" V 12448 3183 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 12500 3300 50  0001 C CNN
F 3 "~" H 12500 3300 50  0001 C CNN
	1    12500 3300
	0    1    1    0   
$EndComp
$Comp
L board-rescue:+BATT-power #PWR053
U 1 1 62EEF656
P 5700 1150
F 0 "#PWR053" H 5700 1000 50  0001 C CNN
F 1 "+BATT" H 5715 1323 50  0000 C CNN
F 2 "" H 5700 1150 50  0001 C CNN
F 3 "" H 5700 1150 50  0001 C CNN
	1    5700 1150
	1    0    0    -1  
$EndComp
Connection ~ 5700 1250
Wire Wire Line
	5850 1650 5700 1650
Wire Wire Line
	5850 1650 5850 1600
Connection ~ 5100 1650
Wire Wire Line
	5700 1700 5700 1650
Connection ~ 5700 1650
Wire Wire Line
	5700 1650 5100 1650
Wire Wire Line
	5850 1650 6650 1650
Connection ~ 5850 1650
Connection ~ 6650 1650
Wire Wire Line
	6650 1650 6650 1550
Wire Wire Line
	6650 1650 7300 1650
Wire Wire Line
	7300 1650 7300 1600
$Comp
L board-rescue:VCC-power #PWR018
U 1 1 6141BC22
P 14550 6950
F 0 "#PWR018" H 14550 6800 50  0001 C CNN
F 1 "VCC" H 14567 7123 50  0000 C CNN
F 2 "" H 14550 6950 50  0001 C CNN
F 3 "" H 14550 6950 50  0001 C CNN
	1    14550 6950
	1    0    0    -1  
$EndComp
$Comp
L eit_proprietary:connector_10pin_ISP_Console J20
U 1 1 60CB9046
P 14200 5400
F 0 "J20" H 14200 5765 50  0000 C CNN
F 1 "connector_10pin_ISP_Console" H 14200 5674 50  0000 C CNN
F 2 "eit_footprints:connector_10pin_TC2050-IDC-NL" H 14200 5400 50  0001 C CNN
F 3 "" H 14200 5400 50  0001 C CNN
	1    14200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 4300 11900 2350
Wire Wire Line
	11900 2350 12600 2350
Connection ~ 11900 4300
Wire Wire Line
	11900 4300 12800 4300
Wire Wire Line
	12000 2550 12000 4200
Wire Wire Line
	12000 4200 13050 4200
Wire Wire Line
	13050 4200 13050 5900
Wire Wire Line
	12100 4100 13150 4100
Wire Wire Line
	13150 4100 13150 5600
Wire Wire Line
	12100 2150 12100 4100
Wire Wire Line
	12100 2150 12600 2150
$Comp
L board-rescue:R-Device-transistor_board-rescue R36
U 1 1 60FE69BA
P 5400 4700
F 0 "R36" V 5300 4650 50  0000 L CNN
F 1 "100" V 5500 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 4700 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4500 5400 4550
$Comp
L board-rescue:VCC-power #PWR016
U 1 1 60FE69C5
P 6850 4250
F 0 "#PWR016" H 6850 4100 50  0001 C CNN
F 1 "VCC" H 6867 4423 50  0000 C CNN
F 2 "" H 6850 4250 50  0001 C CNN
F 3 "" H 6850 4250 50  0001 C CNN
	1    6850 4250
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R86
U 1 1 60FE69CF
P 6600 4300
F 0 "R86" V 6500 4250 50  0000 L CNN
F 1 "220" V 6600 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 4300 50  0001 C CNN
F 3 "~" H 6600 4300 50  0001 C CNN
	1    6600 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4300 6350 4300
Wire Wire Line
	6850 4250 6850 4300
Wire Wire Line
	6850 4300 6750 4300
Wire Wire Line
	6350 4500 6600 4500
Text Label 6600 4500 0    50   ~ 0
PD6
Wire Wire Line
	5750 4500 5400 4500
$Comp
L eit_proprietary:opto_coupler_EL357N(B)(TA)-G U36
U 1 1 60FE69E0
P 6050 4400
F 0 "U36" H 6050 4673 50  0000 C CNN
F 1 "opto_coupler_EL357N(B)(TA)-G" H 6050 4674 50  0001 C CNN
F 2 "eit_footprints:SOP-4_4.1x4.4x2.54P" H 6050 4400 50  0001 C CNN
F 3 "" H 6050 4400 50  0001 C CNN
	1    6050 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 4850 5400 4950
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5750 4950
Wire Wire Line
	1350 4300 1350 4500
Wire Wire Line
	1350 4300 1950 4300
Wire Wire Line
	1350 4800 1350 4950
$Comp
L board-rescue:D-Device D36
U 1 1 61113175
P 700 4650
F 0 "D36" V 654 4729 50  0000 L CNN
F 1 "D" V 745 4729 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 700 4650 50  0001 C CNN
F 3 "~" H 700 4650 50  0001 C CNN
	1    700  4650
	0    1    1    0   
$EndComp
Wire Wire Line
	700  4800 700  4950
Wire Wire Line
	1950 3100 1950 4300
Connection ~ 1950 4300
Wire Wire Line
	1950 4300 2450 4300
Wire Wire Line
	1350 4950 4300 4950
Wire Wire Line
	1950 4500 1950 4300
Wire Wire Line
	2450 4500 2450 4300
Connection ~ 2450 4300
Wire Wire Line
	2450 4300 2950 4300
Wire Wire Line
	2950 4500 2950 4300
Connection ~ 2950 4300
Wire Wire Line
	2950 4300 3400 4300
Wire Wire Line
	3400 4500 3400 4300
Connection ~ 3400 4300
Wire Wire Line
	3400 4300 3850 4300
Wire Wire Line
	3850 4500 3850 4300
Connection ~ 3850 4300
Wire Wire Line
	3850 4300 4150 4300
$Comp
L board-rescue:R-Device-transistor_board-rescue R66
U 1 1 6127A05D
P 6450 9950
F 0 "R66" V 6350 9900 50  0000 L CNN
F 1 "220K" V 6550 9900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6380 9950 50  0001 C CNN
F 3 "~" H 6450 9950 50  0001 C CNN
	1    6450 9950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R76
U 1 1 6127A067
P 6450 10500
F 0 "R76" V 6350 10450 50  0000 L CNN
F 1 "3K3" V 6450 10450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6380 10500 50  0001 C CNN
F 3 "~" H 6450 10500 50  0001 C CNN
	1    6450 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 10100 6450 10250
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR010
U 1 1 6127A072
P 6450 10750
F 0 "#PWR010" H 6450 10500 50  0001 C CNN
F 1 "GND" H 6455 10577 50  0000 C CNN
F 2 "" H 6450 10750 50  0001 C CNN
F 3 "" H 6450 10750 50  0001 C CNN
	1    6450 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 10750 6450 10700
Connection ~ 6450 10250
Wire Wire Line
	6450 10250 6450 10350
$Comp
L board-rescue:C-Device-transistor_board-rescue C76
U 1 1 6127A07F
P 6750 10500
F 0 "C76" H 6865 10546 50  0000 L CNN
F 1 "1uF" H 6865 10455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6788 10350 50  0001 C CNN
F 3 "~" H 6750 10500 50  0001 C CNN
	1    6750 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 10350 6750 10250
Wire Wire Line
	6450 10250 6750 10250
Wire Wire Line
	6750 10650 6750 10700
Wire Wire Line
	6750 10700 6450 10700
Connection ~ 6450 10700
Wire Wire Line
	6450 10700 6450 10650
Wire Wire Line
	6750 10250 6900 10250
Connection ~ 6750 10250
Text Label 6900 10250 0    50   ~ 0
ADC6
Wire Wire Line
	6450 9250 4750 9250
Wire Wire Line
	4750 9250 4750 4300
Wire Wire Line
	6450 9250 6450 9800
Connection ~ 4750 4300
Wire Wire Line
	4750 4300 5750 4300
Text Label 5900 10250 0    50   ~ 0
ADC5
Text Label 10050 5450 0    50   ~ 0
ADC0
Wire Wire Line
	10050 5450 9900 5450
Wire Wire Line
	11800 7600 10750 7600
Connection ~ 11800 7600
$Comp
L board-rescue:R-Device-transistor_board-rescue R45
U 1 1 614853FD
P 4150 4500
F 0 "R45" V 4050 4450 50  0000 L CNN
F 1 "22K" V 4250 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 4500 50  0001 C CNN
F 3 "~" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4350 4150 4300
Connection ~ 4150 4300
Wire Wire Line
	4150 4300 4750 4300
Wire Wire Line
	10050 4550 9900 4550
Text Label 10050 4550 0    50   ~ 0
PB0
Wire Wire Line
	12200 6700 12200 6850
Wire Wire Line
	10150 8850 10750 8850
Wire Wire Line
	10750 8850 10750 7600
Wire Wire Line
	10100 9900 10650 9900
Wire Wire Line
	10750 8850 10750 10850
Wire Wire Line
	10100 10850 10750 10850
Connection ~ 10750 8850
Wire Wire Line
	1350 4300 700  4300
Connection ~ 1350 4300
Connection ~ 700  4300
Wire Wire Line
	700  4300 700  4500
$Comp
L board-rescue:R-Device-transistor_board-rescue R51
U 1 1 61AE7837
P 2450 5300
F 0 "R51" V 2350 5250 50  0000 L CNN
F 1 "22K" V 2550 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2380 5300 50  0001 C CNN
F 3 "~" H 2450 5300 50  0001 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5450 2450 7550
$Comp
L board-rescue:R-Device-transistor_board-rescue R55
U 1 1 61AF9BE7
P 4500 4750
F 0 "R55" V 4400 4700 50  0000 L CNN
F 1 "3.3k" V 4600 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4430 4750 50  0001 C CNN
F 3 "~" H 4500 4750 50  0001 C CNN
	1    4500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4900 4500 4950
Connection ~ 4500 4950
Wire Wire Line
	4500 4950 5400 4950
Wire Wire Line
	4500 4600 4500 4550
Wire Wire Line
	4500 4550 4300 4550
Wire Wire Line
	4300 4550 4300 4700
Wire Wire Line
	4300 4700 4150 4700
Wire Wire Line
	4150 4700 4150 4650
$Comp
L board-rescue:R-Device-transistor_board-rescue R54
U 1 1 61DD4BDE
P 3850 5300
F 0 "R54" V 3750 5250 50  0000 L CNN
F 1 "6K8" V 3950 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 5300 50  0001 C CNN
F 3 "~" H 3850 5300 50  0001 C CNN
	1    3850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5450 3850 5600
Wire Wire Line
	3850 5600 3850 9450
NoConn ~ 13800 5700
NoConn ~ 14600 5700
Wire Wire Line
	13800 5600 13150 5600
Connection ~ 13150 5600
Wire Wire Line
	13150 5600 13150 6350
Wire Wire Line
	14600 5600 14700 5600
Wire Wire Line
	14700 5600 14700 5900
Wire Wire Line
	14700 5900 13050 5900
Connection ~ 13050 5900
Wire Wire Line
	13050 5900 13050 6250
$Comp
L board-rescue:VCC-power #PWR020
U 1 1 61FE4205
P 14950 5200
F 0 "#PWR020" H 14950 5050 50  0001 C CNN
F 1 "VCC" H 14967 5373 50  0000 C CNN
F 2 "" H 14950 5200 50  0001 C CNN
F 3 "" H 14950 5200 50  0001 C CNN
	1    14950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 5200 14950 5300
Wire Wire Line
	14950 5300 14600 5300
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR037
U 1 1 62028757
P 14950 5800
F 0 "#PWR037" H 14950 5550 50  0001 C CNN
F 1 "GND" H 14955 5627 50  0000 C CNN
F 2 "" H 14950 5800 50  0001 C CNN
F 3 "" H 14950 5800 50  0001 C CNN
	1    14950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 5800 14950 5500
Wire Wire Line
	14950 5500 14600 5500
Wire Wire Line
	13800 5500 12200 5500
Connection ~ 12200 5500
Wire Wire Line
	12200 5500 12200 5600
Wire Wire Line
	12800 4300 14800 4300
Wire Wire Line
	14800 4300 14800 5400
Wire Wire Line
	14800 5400 14600 5400
Connection ~ 12800 4300
Wire Wire Line
	11600 4850 11600 4400
Wire Wire Line
	11600 4400 13550 4400
Wire Wire Line
	13550 4400 13550 5300
Connection ~ 11600 4850
Wire Wire Line
	13800 5300 13550 5300
Wire Wire Line
	11700 4950 11700 4500
Wire Wire Line
	11700 4500 13450 4500
Wire Wire Line
	13450 4500 13450 5400
Wire Wire Line
	13450 5400 13800 5400
Connection ~ 11700 4950
$Comp
L Device:CP C36
U 1 1 61235EB2
P 1350 4650
F 0 "C36" H 1468 4696 50  0000 L CNN
F 1 "CP" H 1468 4605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 4500 50  0001 C CNN
F 3 "~" H 1350 4650 50  0001 C CNN
	1    1350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C35
U 1 1 6123B91B
P 1350 5300
F 0 "C35" H 1468 5346 50  0000 L CNN
F 1 "CP" H 1468 5255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 5150 50  0001 C CNN
F 3 "~" H 1350 5300 50  0001 C CNN
	1    1350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C34
U 1 1 6123F0F0
P 1350 5950
F 0 "C34" H 1468 5996 50  0000 L CNN
F 1 "CP" H 1468 5905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 5800 50  0001 C CNN
F 3 "~" H 1350 5950 50  0001 C CNN
	1    1350 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C33
U 1 1 6124287C
P 1350 6600
F 0 "C33" H 1468 6646 50  0000 L CNN
F 1 "CP" H 1468 6555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 6450 50  0001 C CNN
F 3 "~" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C32
U 1 1 61245EDF
P 1350 7250
F 0 "C32" H 1468 7296 50  0000 L CNN
F 1 "CP" H 1468 7205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 7100 50  0001 C CNN
F 3 "~" H 1350 7250 50  0001 C CNN
	1    1350 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C31
U 1 1 612485B7
P 1350 7900
F 0 "C31" H 1468 7946 50  0000 L CNN
F 1 "CP" H 1468 7855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 7750 50  0001 C CNN
F 3 "~" H 1350 7900 50  0001 C CNN
	1    1350 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C30
U 1 1 61249D04
P 1350 8550
F 0 "C30" H 1468 8596 50  0000 L CNN
F 1 "CP" H 1468 8505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1388 8400 50  0001 C CNN
F 3 "~" H 1350 8550 50  0001 C CNN
	1    1350 8550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q21
U 1 1 60C9AA08
P 11700 8050
F 0 "Q21" H 11890 8096 50  0000 L CNN
F 1 "S8050" H 11890 8005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11900 7975 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N3055-D.PDF" H 11700 8050 50  0001 L CNN
	1    11700 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 900  1350 900 
Connection ~ 1350 900 
Wire Wire Line
	1000 1300 1350 1300
Wire Wire Line
	1350 1300 1350 1250
Connection ~ 1350 1250
Wire Wire Line
	1000 1400 1250 1400
Connection ~ 1250 1400
Wire Wire Line
	1250 1400 1250 1000
$Comp
L board-rescue:D-Device D14
U 1 1 60CCE86D
P 8300 9800
F 0 "D14" V 8254 9879 50  0000 L CNN
F 1 "D" V 8345 9879 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8300 9800 50  0001 C CNN
F 3 "~" H 8300 9800 50  0001 C CNN
	1    8300 9800
	0    1    1    0   
$EndComp
$Comp
L board-rescue:D-Device D13
U 1 1 60DB67E1
P 8300 10750
F 0 "D13" V 8254 10829 50  0000 L CNN
F 1 "D" V 8345 10829 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8300 10750 50  0001 C CNN
F 3 "~" H 8300 10750 50  0001 C CNN
	1    8300 10750
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 10550 8300 10600
Wire Wire Line
	8650 9450 8650 9700
Connection ~ 8300 10000
Wire Wire Line
	8000 10000 8300 10000
Wire Wire Line
	8700 9900 8550 9900
Wire Wire Line
	8550 9900 8550 9600
Wire Wire Line
	8550 9600 8300 9600
Wire Wire Line
	8100 9600 8100 9900
Wire Wire Line
	8100 9900 8000 9900
Wire Wire Line
	8300 9650 8300 9600
Connection ~ 8300 9600
Wire Wire Line
	8300 9600 8100 9600
Wire Wire Line
	8300 9950 8300 10000
Wire Wire Line
	8650 10400 8650 10650
Wire Wire Line
	8000 10950 8300 10950
Wire Wire Line
	8300 10900 8300 10950
Connection ~ 8300 10950
Wire Wire Line
	8700 10850 8550 10850
Wire Wire Line
	8550 10850 8550 10550
Wire Wire Line
	8550 10550 8300 10550
Wire Wire Line
	8300 10550 8100 10550
Wire Wire Line
	8100 10550 8100 10850
Wire Wire Line
	8100 10850 8000 10850
Connection ~ 8300 10550
Wire Wire Line
	10850 5050 10850 6850
Text Label 10900 4850 0    50   ~ 0
MOSI
Text Label 10900 4950 0    50   ~ 0
MISO
Text Label 10900 5050 0    50   ~ 0
SCK
Text Label 10050 6050 0    50   ~ 0
Reset_
Text Label 10050 6250 0    50   ~ 0
DEV_RxD
Text Label 10050 6350 0    50   ~ 0
Dev_TxD
Text Notes -2850 6450 0    50   ~ 0
Change 2021-09-15\nR51 was 22k\nR41 was 100k\nThat together was too much.\nChanged R41 to 68k\n\nNOTE Patch for existing boards: Short R51 so we get only 100k left.\n
$EndSCHEMATC
