EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "programmer board 2021"
Date "2021-07-13"
Rev ""
Comp "www.drekkar.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR012
U 1 1 5F253D6E
P 11000 1700
F 0 "#PWR012" H 11000 1450 50  0001 C CNN
F 1 "GND" H 11005 1527 50  0000 C CNN
F 2 "" H 11000 1700 50  0001 C CNN
F 3 "" H 11000 1700 50  0001 C CNN
	1    11000 1700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR05
U 1 1 5F9463A2
P 11650 1700
F 0 "#PWR05" H 11650 1450 50  0001 C CNN
F 1 "GND" H 11655 1527 50  0000 C CNN
F 2 "" H 11650 1700 50  0001 C CNN
F 3 "" H 11650 1700 50  0001 C CNN
	1    11650 1700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:ATmega328-PU-MCU_Microchip_ATmega U20
U 1 1 6060A903
P 5850 6700
F 0 "U20" H 5206 6746 50  0000 R CNN
F 1 "ATmega328-PU" H 5206 6655 50  0000 R CNN
F 2 "eit_footprints:socket_28pin_zif" H 5850 6700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5850 6700 50  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4700 5950 4700
Wire Wire Line
	5950 4700 5950 5200
Wire Wire Line
	5850 4700 5850 5200
$Comp
L board-rescue:Crystal_GND2-Device Y20
U 1 1 6061CFF7
P 7750 6450
F 0 "Y20" H 7750 6718 50  0000 C CNN
F 1 "Crystal_GND2" H 7750 6627 50  0000 C CNN
F 2 "Crystal:Resonator-3Pin_W7.0mm_H2.5mm" H 7750 6450 50  0001 C CNN
F 3 "~" H 7750 6450 50  0001 C CNN
	1    7750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 6450 8050 6450
Wire Wire Line
	8050 6450 8050 6100
Wire Wire Line
	6450 6200 7450 6200
Wire Wire Line
	7450 6200 7450 6450
Wire Wire Line
	7450 6450 7600 6450
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR07
U 1 1 6064C72C
P 7750 6700
F 0 "#PWR07" H 7750 6450 50  0001 C CNN
F 1 "GND" H 7755 6527 50  0000 C CNN
F 2 "" H 7750 6700 50  0001 C CNN
F 3 "" H 7750 6700 50  0001 C CNN
	1    7750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6700 7750 6650
$Comp
L board-rescue:C-Device-transistor_board-rescue C21
U 1 1 6076C128
P 4950 5750
F 0 "C21" H 5065 5796 50  0000 L CNN
F 1 "0.1uF" H 5065 5705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4988 5600 50  0001 C CNN
F 3 "~" H 4950 5750 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5600 4950 5500
Wire Wire Line
	4950 5500 5250 5500
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR019
U 1 1 607705E1
P 4950 6000
F 0 "#PWR019" H 4950 5750 50  0001 C CNN
F 1 "GND" H 4955 5827 50  0000 C CNN
F 2 "" H 4950 6000 50  0001 C CNN
F 3 "" H 4950 6000 50  0001 C CNN
	1    4950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6000 4950 5950
Connection ~ 5850 4700
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR027
U 1 1 60C6FCB4
P 12300 1700
F 0 "#PWR027" H 12300 1450 50  0001 C CNN
F 1 "GND" H 12305 1527 50  0000 C CNN
F 2 "" H 12300 1700 50  0001 C CNN
F 3 "" H 12300 1700 50  0001 C CNN
	1    12300 1700
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR022
U 1 1 60C7C280
P 4500 5200
F 0 "#PWR022" H 4500 4950 50  0001 C CNN
F 1 "GND" H 4505 5027 50  0000 C CNN
F 2 "" H 4500 5200 50  0001 C CNN
F 3 "" H 4500 5200 50  0001 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5200 4500 5150
Wire Wire Line
	4500 4800 4500 4700
Wire Wire Line
	4500 4700 5100 4700
Wire Wire Line
	5850 4450 5850 4700
$Comp
L board-rescue:C-Device-transistor_board-rescue C20
U 1 1 607E35EF
P 4500 4950
F 0 "C20" H 4615 4996 50  0000 L CNN
F 1 "0.1uF" H 4615 4905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4538 4800 50  0001 C CNN
F 3 "~" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C29
U 1 1 608BA525
P 9500 6650
F 0 "C29" H 9615 6696 50  0000 L CNN
F 1 "10 nF" H 9615 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9538 6500 50  0001 C CNN
F 3 "~" H 9500 6650 50  0001 C CNN
	1    9500 6650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR030
U 1 1 608C66BD
P 9500 6850
F 0 "#PWR030" H 9500 6600 50  0001 C CNN
F 1 "GND" H 9505 6677 50  0000 C CNN
F 2 "" H 9500 6850 50  0001 C CNN
F 3 "" H 9500 6850 50  0001 C CNN
	1    9500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6850 9500 6800
Wire Wire Line
	6450 6100 8050 6100
Wire Wire Line
	6450 7000 8450 7000
Wire Wire Line
	9050 7000 9050 6400
Wire Wire Line
	9050 6100 9200 6100
Wire Wire Line
	6450 6000 8050 6000
Wire Wire Line
	10250 5800 10250 5900
Wire Wire Line
	8500 5800 8500 5350
Wire Wire Line
	8500 5350 10150 5350
Wire Wire Line
	10150 5350 10150 6000
Wire Wire Line
	6450 5800 8500 5800
$Comp
L board-rescue:Conn_01x04-Connector_Generic J60
U 1 1 60AEE588
P 12800 3700
F 0 "J60" H 12750 3400 50  0000 L CNN
F 1 "Conn_01x04" H 12650 3950 50  0001 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 12800 3700 50  0001 C CNN
F 3 "~" H 12800 3700 50  0001 C CNN
	1    12800 3700
	1    0    0    1   
$EndComp
Text Notes 12950 3850 0    50   ~ 0
Serial port\npin 4 data from ATMEGA\npin 3 data to ATMEGA\npin 2 5V\npin 1 GND\n(5 Volt signal levels)
$Comp
L board-rescue:R-Device-transistor_board-rescue R53
U 1 1 60D63FCE
P 11650 4400
F 0 "R53" V 11550 4350 50  0000 L CNN
F 1 "27" V 11650 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11580 4400 50  0001 C CNN
F 3 "~" H 11650 4400 50  0001 C CNN
	1    11650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1250 9200 1200
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 60EC7B6D
P 8100 1300
F 0 "J10" H 8100 1050 50  0000 C CNN
F 1 "Conn_01x02" H 8018 1066 50  0001 C CNN
F 2 "eit_footprints:connector_TE_Connectivity_2_pin" H 8100 1300 50  0001 C CNN
F 3 "~" H 8100 1300 50  0001 C CNN
	1    8100 1300
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR02
U 1 1 60ECC521
P 8350 1400
F 0 "#PWR02" H 8350 1150 50  0001 C CNN
F 1 "GND" H 8355 1227 50  0000 C CNN
F 2 "" H 8350 1400 50  0001 C CNN
F 3 "" H 8350 1400 50  0001 C CNN
	1    8350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1400 8350 1300
Wire Wire Line
	8350 1300 8300 1300
$Comp
L Device:D D11
U 1 1 60F46E18
P 8750 1200
F 0 "D11" V 8704 1279 50  0000 L CNN
F 1 "D" V 8795 1279 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_AnodeUp" H 8750 1200 50  0001 C CNN
F 3 "~" H 8750 1200 50  0001 C CNN
	1    8750 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 1200 8450 1200
Wire Wire Line
	6450 7300 8250 7300
$Comp
L board-rescue:LED-Device D20
U 1 1 609CF91F
P 6600 5050
F 0 "D20" V 6639 4933 50  0000 R CNN
F 1 "green" V 6548 4933 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6600 5050 50  0001 C CNN
F 3 "~" H 6600 5050 50  0001 C CNN
	1    6600 5050
	0    -1   -1   0   
$EndComp
NoConn ~ 10000 8300
$Comp
L Connector:USB_B_Micro J50
U 1 1 6136C30F
P 9700 8100
F 0 "J50" H 9470 8089 50  0000 R CNN
F 1 "USB_B_Micro" H 9470 7998 50  0000 R CNN
F 2 "eit_footprints:USB_Micro_B_Female_jlcpcb" H 9850 8050 50  0001 C CNN
F 3 "~" H 9850 8050 50  0001 C CNN
	1    9700 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3300 12400 3700
Wire Wire Line
	9700 8500 9700 8600
Wire Wire Line
	9700 9300 9700 9200
Connection ~ 9700 9200
Wire Wire Line
	12400 3850 12400 3800
Wire Wire Line
	12300 1200 11650 1200
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR038
U 1 1 60C49260
P 12400 3850
F 0 "#PWR038" H 12400 3600 50  0001 C CNN
F 1 "GND" H 12405 3677 50  0000 C CNN
F 2 "" H 12400 3850 50  0001 C CNN
F 3 "" H 12400 3850 50  0001 C CNN
	1    12400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 3500 12600 3500
$Comp
L board-rescue:R-Device-transistor_board-rescue R58
U 1 1 60D7C446
P 11950 4550
F 0 "R58" V 11850 4500 50  0000 L CNN
F 1 "27" V 11950 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11880 4550 50  0001 C CNN
F 3 "~" H 11950 4550 50  0001 C CNN
	1    11950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 3600 12600 3600
Wire Wire Line
	6450 7200 8350 7200
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR040
U 1 1 60E722C9
P 9700 9300
F 0 "#PWR040" H 9700 9050 50  0001 C CNN
F 1 "GND" H 9705 9127 50  0000 C CNN
F 2 "" H 9700 9300 50  0001 C CNN
F 3 "" H 9700 9300 50  0001 C CNN
	1    9700 9300
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R59
U 1 1 61323F4C
P 9700 8900
F 0 "R59" V 9600 8850 50  0000 L CNN
F 1 "27" V 9700 8800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9630 8900 50  0001 C CNN
F 3 "~" H 9700 8900 50  0001 C CNN
	1    9700 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 8700 9600 8700
Wire Wire Line
	9600 8700 9600 8500
Wire Wire Line
	9700 8700 9700 8750
Wire Wire Line
	9700 9050 9700 9200
Wire Wire Line
	10000 8200 10800 8200
Text Notes 13200 5350 0    50   ~ 0
Use U11 or J50\nBoth shall not be mounted on a PCB.
Wire Wire Line
	7150 5600 6450 5600
Text Notes 7550 1350 0    50   ~ 0
8 - 25 Volt\npower input
Text Notes 13150 4600 0    50   ~ 0
If 27 Ohm resistors are not available\n22 or 33 Ohm can be used instead.
Wire Wire Line
	9700 8600 10000 8600
Wire Wire Line
	10000 8600 10000 9200
Connection ~ 10000 9200
Wire Wire Line
	9700 9200 10000 9200
Wire Wire Line
	7050 5700 6450 5700
Wire Wire Line
	8900 1200 9200 1200
$Comp
L Connector_Generic:Conn_01x04 J82
U 1 1 61B5B94C
P 7700 5300
F 0 "J82" H 7650 5550 50  0000 L CNN
F 1 "Conn_01x04" H 7780 5201 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 5300 50  0001 C CNN
F 3 "~" H 7700 5300 50  0001 C CNN
	1    7700 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	7050 5200 7500 5200
Wire Wire Line
	12400 3800 12600 3800
Wire Wire Line
	12300 1700 12300 1650
Wire Wire Line
	12300 1200 12300 1350
$Comp
L board-rescue:D_Zener-Device D10
U 1 1 60BF69AF
P 12300 1500
F 0 "D10" V 12254 1579 50  0000 L CNN
F 1 "D_Zener" V 12345 1579 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_AnodeUp" H 12300 1500 50  0001 C CNN
F 3 "~" H 12300 1500 50  0001 C CNN
	1    12300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	11650 1300 11650 1200
Wire Wire Line
	11650 1700 11650 1600
$Comp
L board-rescue:LED-Device D12
U 1 1 5F9420FF
P 11650 1450
F 0 "D12" V 11689 1333 50  0000 R CNN
F 1 "amber" V 11598 1333 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 11650 1450 50  0001 C CNN
F 3 "~" H 11650 1450 50  0001 C CNN
	1    11650 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11000 1700 11000 1600
Wire Wire Line
	11000 1300 11000 1200
$Comp
L board-rescue:C-Device-transistor_board-rescue C10
U 1 1 60A36635
P 11000 1450
F 0 "C10" H 11115 1496 50  0000 L CNN
F 1 "1uF" H 11115 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 11038 1300 50  0001 C CNN
F 3 "~" H 11000 1450 50  0001 C CNN
	1    11000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1550 9200 1750
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR018
U 1 1 60A11632
P 9200 1750
F 0 "#PWR018" H 9200 1500 50  0001 C CNN
F 1 "GND" H 9205 1577 50  0000 C CNN
F 2 "" H 9200 1750 50  0001 C CNN
F 3 "" H 9200 1750 50  0001 C CNN
	1    9200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 60B5CB87
P 11000 1100
F 0 "#PWR09" H 11000 950 50  0001 C CNN
F 1 "+5V" H 11015 1273 50  0000 C CNN
F 2 "" H 11000 1100 50  0001 C CNN
F 3 "" H 11000 1100 50  0001 C CNN
	1    11000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 1100 11000 1200
$Comp
L board-rescue:MCP1825S-Regulator_Linear U11
U 1 1 60C38C20
P 10100 1200
F 0 "U11" H 10100 1442 50  0000 C CNN
F 1 "5 Volt reg" H 10100 1351 50  0000 C CNN
F 2 "eit_footprints:TO-220-3_with_heatsink_V8508B" H 10000 1350 50  0001 C CNN
F 3 "" H 10100 1450 50  0001 C CNN
	1    10100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1200 11000 1200
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR06
U 1 1 60C42146
P 10100 1700
F 0 "#PWR06" H 10100 1450 50  0001 C CNN
F 1 "GND" H 10105 1527 50  0000 C CNN
F 2 "" H 10100 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0001 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1700 10100 1500
Wire Wire Line
	9800 1200 9200 1200
Connection ~ 9200 1200
$Comp
L board-rescue:C-Device-transistor_board-rescue C12
U 1 1 60A8E10D
P 9200 1400
F 0 "C12" H 9315 1446 50  0000 L CNN
F 1 "1uF" H 9315 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9238 1250 50  0001 C CNN
F 3 "~" H 9200 1400 50  0001 C CNN
	1    9200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5500 6450 5500
Wire Wire Line
	6600 5200 6600 5500
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR0103
U 1 1 60AC9C18
P 5850 8300
F 0 "#PWR0103" H 5850 8050 50  0001 C CNN
F 1 "GND" H 5855 8127 50  0000 C CNN
F 2 "" H 5850 8300 50  0001 C CNN
F 3 "" H 5850 8300 50  0001 C CNN
	1    5850 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 8300 5850 8250
$Comp
L board-rescue:C-Device-transistor_board-rescue C54
U 1 1 60A8A32D
P 10800 8550
F 0 "C54" H 10915 8596 50  0000 L CNN
F 1 "27pF" H 10915 8505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10838 8400 50  0001 C CNN
F 3 "~" H 10800 8550 50  0001 C CNN
	1    10800 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 9200 10300 9200
Wire Wire Line
	10800 8400 10800 8200
Connection ~ 10800 8200
Wire Wire Line
	10800 8700 10800 9200
Connection ~ 10800 9200
Text Notes 13050 3100 0    50   ~ 0
NOTE!\nIf this board is used as USB to TTL serial port adapter \nthen in/out here are swapped.
Text Notes 7500 2100 0    50   ~ 0
If U11 is not present then C12, D11 and J10 are also not needed.
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 60D75F72
P 6850 6600
F 0 "J2" H 6930 6596 50  0000 L CNN
F 1 "Conn_01x07" H 6930 6551 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 6850 6600 50  0001 C CNN
F 3 "~" H 6850 6600 50  0001 C CNN
	1    6850 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6900 6650 6900
Wire Wire Line
	6650 6800 6450 6800
Wire Wire Line
	6450 6700 6650 6700
Wire Wire Line
	6650 6600 6450 6600
Wire Wire Line
	6450 6500 6650 6500
Wire Wire Line
	6650 6400 6450 6400
Wire Wire Line
	6650 6300 6500 6300
Wire Wire Line
	6500 6300 6500 8250
Wire Wire Line
	6500 8250 5850 8250
Connection ~ 5850 8250
Wire Wire Line
	5850 8250 5850 8200
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 60DB2A35
P 7650 7600
F 0 "J3" H 7800 7600 50  0000 C CNN
F 1 "Conn_01x05" H 7568 7266 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7650 7600 50  0001 C CNN
F 3 "~" H 7650 7600 50  0001 C CNN
	1    7650 7600
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 8250 6750 8250
Wire Wire Line
	7350 8250 7350 7800
Wire Wire Line
	7350 7800 7450 7800
Connection ~ 6500 8250
Wire Wire Line
	7450 7500 6450 7500
Wire Wire Line
	7450 7400 6450 7400
Wire Wire Line
	6600 4700 5950 4700
Wire Wire Line
	6600 4700 6600 4900
Connection ~ 5950 4700
Wire Wire Line
	6600 4700 7250 4700
Wire Wire Line
	7250 4700 7250 4900
Wire Wire Line
	7250 7700 7450 7700
Connection ~ 6600 4700
Wire Wire Line
	6450 7900 6550 7900
Wire Wire Line
	7150 5100 7150 5600
Wire Wire Line
	7150 5100 7500 5100
Wire Wire Line
	7050 5700 7050 5200
Wire Wire Line
	7250 5300 7500 5300
Connection ~ 7250 5300
Wire Wire Line
	7250 5300 7250 7700
Wire Wire Line
	7350 7800 7350 5400
Wire Wire Line
	7350 5400 7500 5400
Connection ~ 7350 7800
Wire Wire Line
	6650 7700 6450 7700
Wire Wire Line
	6450 7600 7450 7600
Wire Wire Line
	9500 6500 9500 6400
Wire Wire Line
	9500 6400 9050 6400
Connection ~ 9050 6400
Wire Wire Line
	9050 6400 9050 6100
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 60AABAA7
P 8100 800
F 0 "J11" H 8100 550 50  0000 C CNN
F 1 "Conn_01x02" H 8018 566 50  0001 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8100 800 50  0001 C CNN
F 3 "~" H 8100 800 50  0001 C CNN
	1    8100 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 800  8350 800 
Wire Wire Line
	8350 800  8350 1300
Connection ~ 8350 1300
Wire Wire Line
	8300 700  8450 700 
Wire Wire Line
	8450 700  8450 1200
Connection ~ 8450 1200
Wire Wire Line
	8450 1200 8300 1200
$Comp
L board-rescue:Conn_01x04-Connector_Generic J4
U 1 1 60ADCADB
P 7000 7800
F 0 "J4" H 7080 7746 50  0000 L CNN
F 1 "Conn_01x04-Connector_Generic" H 7080 7701 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7000 7800 50  0001 C CNN
F 3 "" H 7000 7800 50  0001 C CNN
	1    7000 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7900 6550 8000
Wire Wire Line
	6550 8000 6800 8000
Wire Wire Line
	6600 7800 6600 7900
Wire Wire Line
	6600 7900 6800 7900
Wire Wire Line
	6600 7800 6450 7800
Wire Wire Line
	6650 7700 6650 7800
Wire Wire Line
	6650 7800 6800 7800
Wire Wire Line
	6800 7700 6750 7700
Wire Wire Line
	6750 7700 6750 8250
Connection ~ 6750 8250
Wire Wire Line
	6750 8250 7350 8250
$Comp
L board-rescue:C-Device-transistor_board-rescue C22
U 1 1 60B4C390
P 5100 5000
F 0 "C22" H 5215 5046 50  0000 L CNN
F 1 "1uF" H 5215 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5138 4850 50  0001 C CNN
F 3 "~" H 5100 5000 50  0001 C CNN
	1    5100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4850 5100 4700
Connection ~ 5100 4700
Wire Wire Line
	5100 4700 5850 4700
Wire Wire Line
	5100 5150 4500 5150
Connection ~ 4500 5150
Wire Wire Line
	4500 5150 4500 5100
$Comp
L board-rescue:C-Device-transistor_board-rescue C23
U 1 1 60B6AB7C
P 4500 5700
F 0 "C23" H 4615 5746 50  0000 L CNN
F 1 "0.1uF" H 4615 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 5550 50  0001 C CNN
F 3 "~" H 4500 5700 50  0001 C CNN
	1    4500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5550 4500 5500
Wire Wire Line
	4500 5500 4950 5500
Connection ~ 4950 5500
Wire Wire Line
	4950 5950 4500 5950
Wire Wire Line
	4500 5950 4500 5850
Connection ~ 4950 5950
Wire Wire Line
	4950 5950 4950 5900
$Comp
L board-rescue:Conn_01x03-Connector_Generic J5
U 1 1 60ABDEC7
P 8750 7600
F 0 "J5" H 8830 7596 50  0000 L CNN
F 1 "Conn_01x03-Connector_Generic" H 8830 7551 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8750 7600 50  0001 C CNN
F 3 "" H 8750 7600 50  0001 C CNN
	1    8750 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 7500 8450 7500
Wire Wire Line
	8450 7500 8450 7000
Connection ~ 8450 7000
Wire Wire Line
	8450 7000 9050 7000
Wire Wire Line
	8550 7600 8350 7600
Connection ~ 8350 7200
Wire Wire Line
	8550 7700 8250 7700
Wire Wire Line
	8250 7700 8250 7300
$Comp
L board-rescue:Conn_01x03-Connector_Generic J6
U 1 1 60AEDC71
P 8500 4900
F 0 "J6" H 8418 4667 50  0000 C CNN
F 1 "Conn_01x03-Connector_Generic" H 8580 4851 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8500 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
	1    8500 4900
	1    0    0    1   
$EndComp
Wire Wire Line
	8300 5000 8050 5000
Wire Wire Line
	7250 4700 8050 4700
Wire Wire Line
	8050 4700 8050 4900
Wire Wire Line
	8050 4900 8300 4900
Connection ~ 7250 4700
Wire Wire Line
	4500 5500 4050 5500
Wire Wire Line
	4050 5500 4050 3950
Wire Wire Line
	4050 3950 8150 3950
Wire Wire Line
	8150 3950 8150 4800
Wire Wire Line
	8150 4800 8300 4800
Connection ~ 4500 5500
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 60B2F681
P 7700 4900
F 0 "J8" H 7780 4896 50  0000 L CNN
F 1 "Conn_01x01" H 7780 4851 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7700 4900 50  0001 C CNN
F 3 "~" H 7700 4900 50  0001 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 60B33EE8
P 6850 5500
F 0 "J7" H 6930 5496 50  0000 L CNN
F 1 "Conn_01x01" H 6930 5451 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6850 5500 50  0001 C CNN
F 3 "~" H 6850 5500 50  0001 C CNN
	1    6850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5500 6600 5500
Connection ~ 6600 5500
Wire Wire Line
	7500 4900 7250 4900
Connection ~ 7250 4900
Wire Wire Line
	7250 4900 7250 5300
$Comp
L Connector_Generic:Conn_01x01 J90
U 1 1 60B784FC
P 2350 9650
F 0 "J90" H 2268 9517 50  0000 C CNN
F 1 "Conn_01x01" H 2430 9601 50  0001 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 2350 9650 50  0001 C CNN
F 3 "~" H 2350 9650 50  0001 C CNN
	1    2350 9650
	-1   0    0    1   
$EndComp
NoConn ~ 2550 9650
$Comp
L Connector_Generic:Conn_01x01 J91
U 1 1 60BDE0D2
P 2350 9950
F 0 "J91" H 2268 9817 50  0000 C CNN
F 1 "Conn_01x01" H 2430 9901 50  0001 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 2350 9950 50  0001 C CNN
F 3 "~" H 2350 9950 50  0001 C CNN
	1    2350 9950
	-1   0    0    1   
$EndComp
NoConn ~ 2550 9950
$Comp
L Connector_Generic:Conn_01x01 J92
U 1 1 60C00097
P 2350 10250
F 0 "J92" H 2268 10117 50  0000 C CNN
F 1 "Conn_01x01" H 2430 10201 50  0001 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 2350 10250 50  0001 C CNN
F 3 "~" H 2350 10250 50  0001 C CNN
	1    2350 10250
	-1   0    0    1   
$EndComp
NoConn ~ 2550 10250
$Comp
L Connector_Generic:Conn_01x01 J93
U 1 1 60C000A2
P 2350 10550
F 0 "J93" H 2268 10417 50  0000 C CNN
F 1 "Conn_01x01" H 2430 10501 50  0001 L CNN
F 2 "MountingHole:MountingHole_3mm_Pad" H 2350 10550 50  0001 C CNN
F 3 "~" H 2350 10550 50  0001 C CNN
	1    2350 10550
	-1   0    0    1   
$EndComp
NoConn ~ 2550 10550
Wire Wire Line
	8050 6000 8050 5000
Connection ~ 8050 6000
Connection ~ 9050 6100
Wire Wire Line
	8850 5900 8850 3850
Connection ~ 8850 5900
Wire Wire Line
	8850 5900 9200 5900
Connection ~ 10150 5350
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR010
U 1 1 60D90774
P 10250 6200
F 0 "#PWR010" H 10250 5950 50  0001 C CNN
F 1 "GND" H 10255 6027 50  0000 C CNN
F 2 "" H 10250 6200 50  0001 C CNN
F 3 "" H 10250 6200 50  0001 C CNN
	1    10250 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J9
U 1 1 60E5857C
P 10850 5500
F 0 "J9" H 10900 5725 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 10900 5726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10850 5500 50  0001 C CNN
F 3 "~" H 10850 5500 50  0001 C CNN
	1    10850 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	10650 5500 10450 5500
Wire Wire Line
	10450 5500 10450 4950
Wire Wire Line
	11350 5500 11150 5500
Wire Wire Line
	10650 5600 10600 5600
Wire Wire Line
	10600 5600 10600 5700
Wire Wire Line
	10600 5700 10900 5700
Wire Wire Line
	11200 5700 11200 5600
Wire Wire Line
	11200 5600 11150 5600
Wire Wire Line
	11200 5400 11200 5200
Wire Wire Line
	11200 5200 10900 5200
Wire Wire Line
	10600 5200 10600 5400
Wire Wire Line
	10600 5400 10650 5400
Wire Wire Line
	11200 5400 11150 5400
Wire Wire Line
	12400 3700 12600 3700
Connection ~ 11950 3600
Wire Wire Line
	11950 3600 11950 4400
Wire Wire Line
	8750 3500 11650 3500
Connection ~ 11650 3500
Wire Wire Line
	11650 3500 11650 4250
$Comp
L power:VCC #PWR03
U 1 1 60E266B7
P 10900 5100
F 0 "#PWR03" H 10900 4950 50  0001 C CNN
F 1 "VCC" H 10917 5273 50  0000 C CNN
F 2 "" H 10900 5100 50  0001 C CNN
F 3 "" H 10900 5100 50  0001 C CNN
	1    10900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 60E2CD46
P 12400 3300
F 0 "#PWR011" H 12400 3150 50  0001 C CNN
F 1 "VCC" H 12417 3473 50  0000 C CNN
F 2 "" H 12400 3300 50  0001 C CNN
F 3 "" H 12400 3300 50  0001 C CNN
	1    12400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 60E2E1AB
P 5850 4450
F 0 "#PWR01" H 5850 4300 50  0001 C CNN
F 1 "VCC" H 5867 4623 50  0000 C CNN
F 2 "" H 5850 4450 50  0001 C CNN
F 3 "" H 5850 4450 50  0001 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 6100 10250 6200
$Comp
L eit_proprietary:connector_6pin_AVRISP_MKII J20
U 1 1 610E34B1
P 9600 6000
F 0 "J20" H 9600 6365 50  0000 C CNN
F 1 "connector_6pin_AVRISP_MKII" H 9600 6274 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9600 6000 50  0001 C CNN
F 3 "" H 9600 6000 50  0001 C CNN
	1    9600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6100 10250 6100
Wire Wire Line
	10150 6000 10000 6000
Wire Wire Line
	10000 5900 10250 5900
Connection ~ 11000 1200
$Comp
L power:VCC #PWR0101
U 1 1 612AA92F
P 11650 1100
F 0 "#PWR0101" H 11650 950 50  0001 C CNN
F 1 "VCC" H 11667 1273 50  0000 C CNN
F 2 "" H 11650 1100 50  0001 C CNN
F 3 "" H 11650 1100 50  0001 C CNN
	1    11650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 1100 11650 1200
Connection ~ 11650 1200
$Comp
L board-rescue:R-Device-transistor_board-rescue R1
U 1 1 60E75FB5
P 10450 4800
F 0 "R1" V 10350 4750 50  0000 L CNN
F 1 "27" V 10450 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10380 4800 50  0001 C CNN
F 3 "~" H 10450 4800 50  0001 C CNN
	1    10450 4800
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:R-Device-transistor_board-rescue R2
U 1 1 60E77D86
P 11350 4800
F 0 "R2" V 11450 4750 50  0000 L CNN
F 1 "27" V 11350 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11280 4800 50  0001 C CNN
F 3 "~" H 11350 4800 50  0001 C CNN
	1    11350 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	11350 4950 11350 5500
Wire Wire Line
	9150 3000 8750 3000
Wire Wire Line
	8750 3000 8750 3500
$Comp
L power:VCC #PWR013
U 1 1 60F21411
P 8450 3050
F 0 "#PWR013" H 8450 2900 50  0001 C CNN
F 1 "VCC" H 8467 3223 50  0000 C CNN
F 2 "" H 8450 3050 50  0001 C CNN
F 3 "" H 8450 3050 50  0001 C CNN
	1    8450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3200 8450 3200
Wire Wire Line
	8450 3200 8450 3050
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR014
U 1 1 60F3A457
P 8450 3500
F 0 "#PWR014" H 8450 3250 50  0001 C CNN
F 1 "GND" H 8455 3327 50  0000 C CNN
F 2 "" H 8450 3500 50  0001 C CNN
F 3 "" H 8450 3500 50  0001 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3500 8450 3400
Wire Wire Line
	8450 3400 9150 3400
Wire Wire Line
	9050 3300 9150 3300
Wire Wire Line
	10150 3400 10050 3400
Wire Wire Line
	10150 3400 10150 5350
Wire Wire Line
	10250 3850 10250 3200
Wire Wire Line
	10250 3200 10050 3200
Wire Wire Line
	8850 3850 10250 3850
Wire Wire Line
	9050 3300 9050 6100
Wire Wire Line
	8950 6000 8950 3950
Wire Wire Line
	8950 3950 10350 3950
Wire Wire Line
	10350 3950 10350 3000
Wire Wire Line
	10350 3000 10050 3000
Connection ~ 8950 6000
Wire Wire Line
	8950 6000 9200 6000
Wire Wire Line
	8850 3600 8850 3100
Wire Wire Line
	8850 3100 9150 3100
Wire Wire Line
	8850 3600 11950 3600
Wire Wire Line
	10900 5100 10900 5200
Connection ~ 10900 5200
Wire Wire Line
	10900 5200 10600 5200
Wire Wire Line
	11350 3100 10050 3100
Wire Wire Line
	10450 3300 10050 3300
$Comp
L power:VCC #PWR0102
U 1 1 61113CA7
P 10250 5800
F 0 "#PWR0102" H 10250 5650 50  0001 C CNN
F 1 "VCC" H 10267 5973 50  0000 C CNN
F 2 "" H 10250 5800 50  0001 C CNN
F 3 "" H 10250 5800 50  0001 C CNN
	1    10250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 3100 11350 4650
Wire Wire Line
	10450 3300 10450 4650
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR0104
U 1 1 61191D31
P 10900 5800
F 0 "#PWR0104" H 10900 5550 50  0001 C CNN
F 1 "GND" H 10905 5627 50  0000 C CNN
F 2 "" H 10900 5800 50  0001 C CNN
F 3 "" H 10900 5800 50  0001 C CNN
	1    10900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 5800 10900 5700
Connection ~ 10900 5700
Wire Wire Line
	10900 5700 11200 5700
Wire Wire Line
	6450 5900 8850 5900
Wire Wire Line
	8050 6000 8950 6000
Text Label 6800 6000 0    50   ~ 0
SCK
Text Label 6800 5900 0    50   ~ 0
MISO
Text Label 6800 5800 0    50   ~ 0
MOSI
Text Label 8650 7000 0    50   ~ 0
Reset_
Text Label 7500 7200 0    50   ~ 0
atmega_RxD
Text Label 7500 7300 0    50   ~ 0
atmega_TxD
$Comp
L board-rescue:connector_10pin_ISP_Console_v2-eit_proprietary J1
U 1 1 60EE564C
P 9600 3150
F 0 "J1" H 9600 3525 50  0000 C CNN
F 1 "connector_10pin_ISP_Console_v2" H 9600 3434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 6200 15500 6300
Wire Wire Line
	13900 8900 14550 8900
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR017
U 1 1 6115FFAA
P 15400 9350
F 0 "#PWR017" H 15400 9100 50  0001 C CNN
F 1 "GND" H 15405 9177 50  0000 C CNN
F 2 "" H 15400 9350 50  0001 C CNN
F 3 "" H 15400 9350 50  0001 C CNN
	1    15400 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 8700 11250 9200
Wire Wire Line
	10800 9200 11250 9200
Wire Wire Line
	14150 8000 14150 8100
Connection ~ 14150 8000
Wire Wire Line
	14150 8000 13900 8000
Wire Wire Line
	14150 8100 13900 8100
Wire Wire Line
	14050 7900 13900 7900
Wire Wire Line
	14050 6800 14050 7900
Wire Wire Line
	13950 7800 13900 7800
Wire Wire Line
	11000 7450 11250 7450
Wire Wire Line
	10800 8200 12300 8200
$Comp
L Interface_USB:FT232RL U50
U 1 1 60FF9F26
P 13100 8500
F 0 "U50" H 13450 9400 50  0000 C CNN
F 1 "FT232RL" H 12650 9400 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 14200 7600 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 13100 8500 50  0001 C CNN
	1    13100 8500
	1    0    0    -1  
$EndComp
Text Label 12250 7450 0    50   ~ 0
USB_5V
$Comp
L board-rescue:C-Device-transistor_board-rescue C53
U 1 1 612374E6
P 11700 7650
F 0 "C53" H 11815 7696 50  0000 L CNN
F 1 "10uF" H 11815 7605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 11738 7500 50  0001 C CNN
F 3 "~" H 11700 7650 50  0001 C CNN
	1    11700 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 7350 10700 7350
Wire Wire Line
	11300 7150 11300 7350
$Comp
L power:VCC #PWR04
U 1 1 60E0E56A
P 11300 7150
F 0 "#PWR04" H 11300 7000 50  0001 C CNN
F 1 "VCC" H 11317 7323 50  0000 C CNN
F 2 "" H 11300 7150 50  0001 C CNN
F 3 "" H 11300 7150 50  0001 C CNN
	1    11300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 7250 11050 7250
Connection ~ 11000 7450
Wire Wire Line
	11000 7450 10700 7450
Wire Wire Line
	11050 7150 11050 7250
Wire Wire Line
	11000 7450 11000 7900
$Comp
L Connector_Generic:Conn_01x03 J29
U 1 1 60D8A0FA
P 10500 7350
F 0 "J29" H 10418 7117 50  0000 C CNN
F 1 "Conn_01x03" H 10418 7116 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10500 7350 50  0001 C CNN
F 3 "~" H 10500 7350 50  0001 C CNN
	1    10500 7350
	-1   0    0    1   
$EndComp
$Comp
L board-rescue:LED-Device D51
U 1 1 60AFCE27
P 14550 8100
F 0 "D51" V 14589 7983 50  0000 R CNN
F 1 "amber" V 14498 7983 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 14550 8100 50  0001 C CNN
F 3 "~" H 14550 8100 50  0001 C CNN
	1    14550 8100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11250 8100 10000 8100
Connection ~ 11250 8100
Wire Wire Line
	11250 8400 11250 8100
$Comp
L board-rescue:C-Device-transistor_board-rescue C55
U 1 1 60A931F5
P 11250 8550
F 0 "C55" H 11365 8596 50  0000 L CNN
F 1 "27pF" H 11365 8505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11288 8400 50  0001 C CNN
F 3 "~" H 11250 8550 50  0001 C CNN
	1    11250 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 4700 11950 6700
Wire Wire Line
	15500 6650 15500 6600
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR08
U 1 1 60E63816
P 15500 6650
F 0 "#PWR08" H 15500 6400 50  0001 C CNN
F 1 "GND" H 15505 6477 50  0000 C CNN
F 2 "" H 15500 6650 50  0001 C CNN
F 3 "" H 15500 6650 50  0001 C CNN
	1    15500 6650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C52
U 1 1 60E2279C
P 15500 6450
F 0 "C52" H 15615 6496 50  0000 L CNN
F 1 "0.1uF" H 15615 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 15538 6300 50  0001 C CNN
F 3 "~" H 15500 6450 50  0001 C CNN
	1    15500 6450
	1    0    0    -1  
$EndComp
Text Notes 9650 9700 0    50   ~ 0
Optional USB interface.\nIf J50 is not mounted then do not mount the other SMD components here.
Connection ~ 11950 6700
Connection ~ 11650 6800
Wire Wire Line
	13950 6700 13950 7800
Wire Wire Line
	11650 4550 11650 6800
$Comp
L power:+5V #PWR031
U 1 1 60ADA588
P 11050 7150
F 0 "#PWR031" H 11050 7000 50  0001 C CNN
F 1 "+5V" H 11065 7323 50  0000 C CNN
F 2 "" H 11050 7150 50  0001 C CNN
F 3 "" H 11050 7150 50  0001 C CNN
	1    11050 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11000 7900 10850 7900
$Comp
L board-rescue:LED-Device D52
U 1 1 60DA1CEB
P 15050 8100
F 0 "D52" V 15089 7983 50  0000 R CNN
F 1 "amber" V 14998 7983 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 15050 8100 50  0001 C CNN
F 3 "~" H 15050 8100 50  0001 C CNN
	1    15050 8100
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:C-Device-transistor_board-rescue C51
U 1 1 608BFA1F
P 13350 7100
F 0 "C51" H 13400 7200 50  0000 L CNN
F 1 "0.1uF" H 13450 7100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13388 6950 50  0001 C CNN
F 3 "~" H 13350 7100 50  0001 C CNN
	1    13350 7100
	1    0    0    -1  
$EndComp
Connection ~ 8250 7300
Wire Wire Line
	8350 7600 8350 7200
Wire Wire Line
	8250 7300 10400 7300
Wire Wire Line
	10400 7300 10400 6800
Wire Wire Line
	10400 6800 11650 6800
Wire Wire Line
	8350 7200 10300 7200
Wire Wire Line
	10300 7200 10300 6700
Wire Wire Line
	10300 6700 11950 6700
Wire Wire Line
	13100 9500 13100 9550
Wire Wire Line
	13100 9550 13200 9550
Wire Wire Line
	13200 9550 13200 9500
Wire Wire Line
	13200 9550 13300 9550
Wire Wire Line
	13300 9550 13300 9500
Connection ~ 13200 9550
Wire Wire Line
	13100 9550 12900 9550
Wire Wire Line
	12900 9550 12900 9500
Connection ~ 13100 9550
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR016
U 1 1 61340CFD
P 13300 9600
F 0 "#PWR016" H 13300 9350 50  0001 C CNN
F 1 "GND" H 13305 9427 50  0000 C CNN
F 2 "" H 13300 9600 50  0001 C CNN
F 3 "" H 13300 9600 50  0001 C CNN
	1    13300 9600
	1    0    0    -1  
$EndComp
Connection ~ 13300 9550
Wire Wire Line
	13300 9600 13300 9550
Wire Wire Line
	11250 8100 12300 8100
Connection ~ 13000 6200
Wire Wire Line
	13200 7450 13200 7500
NoConn ~ 12300 9200
NoConn ~ 12300 8900
NoConn ~ 12300 8700
Wire Wire Line
	12100 8500 12300 8500
Wire Wire Line
	12100 6200 12100 8500
Wire Wire Line
	14150 6600 14150 8000
NoConn ~ 13900 8200
Connection ~ 13200 7450
Wire Wire Line
	13350 6950 13350 6900
Wire Wire Line
	13350 6900 13200 6900
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR020
U 1 1 61970A06
P 13800 7200
F 0 "#PWR020" H 13800 6950 50  0001 C CNN
F 1 "GND" H 13805 7027 50  0000 C CNN
F 2 "" H 13800 7200 50  0001 C CNN
F 3 "" H 13800 7200 50  0001 C CNN
	1    13800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 7200 13800 7150
Wire Wire Line
	13800 7150 13700 7150
Wire Wire Line
	13700 7150 13700 7300
Wire Wire Line
	13700 7300 13350 7300
Wire Wire Line
	13350 7300 13350 7250
Wire Wire Line
	11700 7500 11700 7450
Connection ~ 11700 7450
Wire Wire Line
	11700 7450 13000 7450
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR015
U 1 1 61A1C528
P 11700 7850
F 0 "#PWR015" H 11700 7600 50  0001 C CNN
F 1 "GND" H 11705 7677 50  0000 C CNN
F 2 "" H 11700 7850 50  0001 C CNN
F 3 "" H 11700 7850 50  0001 C CNN
	1    11700 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 7850 11700 7800
$Comp
L Connector_Generic:Conn_01x07 J51
U 1 1 61A5DC21
P 15750 8900
F 0 "J51" H 15830 8896 50  0000 L CNN
F 1 "Conn_01x07" H 15830 8851 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 15750 8900 50  0001 C CNN
F 3 "~" H 15750 8900 50  0001 C CNN
	1    15750 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 8700 15500 8700
Wire Wire Line
	15500 8700 15500 7450
Wire Wire Line
	15550 8600 15400 8600
Wire Wire Line
	15400 8600 15400 9350
Wire Wire Line
	13900 9200 15550 9200
Wire Wire Line
	13900 9100 15550 9100
Wire Wire Line
	15550 8900 14550 8900
Connection ~ 14550 8900
Wire Wire Line
	13900 8800 15050 8800
Wire Wire Line
	14550 8250 14550 8400
Wire Wire Line
	13000 7500 13000 7450
Wire Wire Line
	13200 6900 13200 7450
Wire Wire Line
	13200 7450 13000 7450
Connection ~ 13000 7450
Wire Wire Line
	13000 7450 13000 6200
$Comp
L Device:Ferrite_Bead FB50
U 1 1 61042D1B
P 10700 7900
F 0 "FB50" V 10426 7900 50  0000 C CNN
F 1 "Ferrite_Bead" V 10517 7900 50  0000 C CNN
F 2 "eit_footprints:SMD-4.2x4.4x2.0_inductor" V 10630 7900 50  0001 C CNN
F 3 "~" H 10700 7900 50  0001 C CNN
	1    10700 7900
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 7900 10300 7900
$Comp
L board-rescue:C-Device-transistor_board-rescue C58
U 1 1 61003E34
P 11250 7650
F 0 "C58" H 11365 7696 50  0000 L CNN
F 1 "0.1uF" H 11365 7605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11288 7500 50  0001 C CNN
F 3 "~" H 11250 7650 50  0001 C CNN
	1    11250 7650
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR021
U 1 1 61065328
P 11250 7850
F 0 "#PWR021" H 11250 7600 50  0001 C CNN
F 1 "GND" H 11255 7677 50  0000 C CNN
F 2 "" H 11250 7850 50  0001 C CNN
F 3 "" H 11250 7850 50  0001 C CNN
	1    11250 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 7850 11250 7800
Wire Wire Line
	11250 7500 11250 7450
Connection ~ 11250 7450
Wire Wire Line
	11250 7450 11700 7450
Wire Wire Line
	13900 9000 15550 9000
Wire Wire Line
	15050 8250 15050 8400
Connection ~ 15050 8800
Wire Wire Line
	15050 8800 15550 8800
$Comp
L board-rescue:C-Device-transistor_board-rescue C57
U 1 1 610383DF
P 11800 8800
F 0 "C57" H 11850 8900 50  0000 L CNN
F 1 "0.1uF" H 11900 8800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11838 8650 50  0001 C CNN
F 3 "~" H 11800 8800 50  0001 C CNN
	1    11800 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 7800 12000 7800
Wire Wire Line
	12000 7800 12000 8550
Wire Wire Line
	12000 8550 11800 8550
Wire Wire Line
	11800 8550 11800 8650
$Comp
L board-rescue:GND-power-transistor_board-rescue #PWR023
U 1 1 61050A77
P 11800 9100
F 0 "#PWR023" H 11800 8850 50  0001 C CNN
F 1 "GND" H 11805 8927 50  0000 C CNN
F 2 "" H 11800 9100 50  0001 C CNN
F 3 "" H 11800 9100 50  0001 C CNN
	1    11800 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 9100 11800 8950
$Comp
L board-rescue:R-Device-transistor_board-rescue R51
U 1 1 6106C6A4
P 14550 8550
F 0 "R51" V 14450 8500 50  0000 L CNN
F 1 "330" V 14550 8450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14480 8550 50  0001 C CNN
F 3 "~" H 14550 8550 50  0001 C CNN
	1    14550 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 8700 14550 8900
$Comp
L board-rescue:R-Device-transistor_board-rescue R52
U 1 1 6106DB07
P 15050 8550
F 0 "R52" V 14950 8500 50  0000 L CNN
F 1 "330" V 15050 8450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14980 8550 50  0001 C CNN
F 3 "~" H 15050 8550 50  0001 C CNN
	1    15050 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 8700 15050 8800
$Comp
L board-rescue:C-Device-transistor_board-rescue C56
U 1 1 610CC626
P 10300 8550
F 0 "C56" H 10350 8650 50  0000 L CNN
F 1 "10nF" H 10400 8550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10338 8400 50  0001 C CNN
F 3 "~" H 10300 8550 50  0001 C CNN
	1    10300 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 8400 10300 7900
Connection ~ 10300 7900
Wire Wire Line
	10300 7900 10000 7900
Wire Wire Line
	10300 8700 10300 9200
Connection ~ 10300 9200
Wire Wire Line
	10300 9200 10800 9200
Wire Wire Line
	15050 7750 14800 7750
Wire Wire Line
	15050 7750 15050 7950
Wire Wire Line
	14550 7750 14550 7950
Wire Wire Line
	13200 7450 14800 7450
Wire Wire Line
	14800 7450 14800 7750
Connection ~ 14800 7450
Wire Wire Line
	14800 7450 15500 7450
Connection ~ 14800 7750
Wire Wire Line
	14800 7750 14550 7750
Wire Wire Line
	11650 6800 14050 6800
Wire Wire Line
	11950 6700 13950 6700
Wire Wire Line
	12100 6200 13000 6200
Wire Wire Line
	13000 6200 14150 6200
Connection ~ 14150 6200
Wire Wire Line
	14150 6300 14150 6200
$Comp
L board-rescue:R-Device-transistor_board-rescue R56
U 1 1 60D172D3
P 14150 6450
F 0 "R56" V 14050 6400 50  0000 L CNN
F 1 "10K" V 14150 6350 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14080 6450 50  0001 C CNN
F 3 "~" H 14150 6450 50  0001 C CNN
	1    14150 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 6200 15500 6200
Text Notes 14200 6450 0    50   ~ 0
Probably not needed
NoConn ~ 13900 8300
NoConn ~ 13900 8400
NoConn ~ 13900 8500
NoConn ~ 16800 7450
NoConn ~ 11250 10100
$EndSCHEMATC
