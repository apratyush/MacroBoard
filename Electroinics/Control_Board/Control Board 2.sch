EESchema Schematic File Version 4
LIBS:Control Board 2-cache
EELAYER 26 0
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
L Arduino_Pro_Micro:ProMicro U1
U 1 1 609D5DF9
P 5850 3900
F 0 "U1" H 5850 5043 60  0000 C CNN
F 1 "ProMicro" H 5850 4937 60  0000 C CNN
F 2 "Arduino_Pro_Micro:ProMicro" H 5850 4831 60  0000 C CNN
F 3 "" H 5950 2850 60  0000 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
Text GLabel 6700 3550 2    50   Input ~ 0
A3
Text GLabel 6700 3650 2    50   Input ~ 0
A2
Text GLabel 6700 3750 2    50   Input ~ 0
A1
Text GLabel 6700 3850 2    50   Input ~ 0
A0
Text GLabel 5000 3650 0    50   Input ~ 0
SCL
Text GLabel 5000 3550 0    50   Input ~ 0
SDA
Text GLabel 5000 3250 0    50   Input ~ 0
D0
Text GLabel 5000 3150 0    50   Input ~ 0
D1
Text GLabel 6700 3950 2    50   Input ~ 0
D15
Text GLabel 6700 4050 2    50   Input ~ 0
D14
Text GLabel 6700 4150 2    50   Input ~ 0
D16
Text GLabel 6700 4250 2    50   Input ~ 0
D10
Wire Wire Line
	6550 3550 6700 3550
Wire Wire Line
	6550 3650 6700 3650
Wire Wire Line
	6550 3750 6700 3750
Wire Wire Line
	6550 3850 6700 3850
Text Notes 6950 3900 2    50   ~ 0
R1
Text Notes 6950 3800 2    50   ~ 0
R2
Text Notes 6950 3700 2    50   ~ 0
R3
Text Notes 6950 3600 2    50   ~ 0
R4
Wire Wire Line
	6550 3950 6700 3950
Wire Wire Line
	6550 4050 6700 4050
Wire Wire Line
	6550 4150 6700 4150
Text Notes 7000 4000 2    50   ~ 0
C3
Text Notes 7000 4100 2    50   ~ 0
C2
Text Notes 7000 4200 2    50   ~ 0
C1
Text Notes 4850 3300 2    50   ~ 0
ENC1
Text Notes 4850 3200 2    50   ~ 0
ENC1
Wire Wire Line
	5000 3150 5150 3150
Wire Wire Line
	5000 3250 5150 3250
Text GLabel 5000 3750 0    50   Input ~ 0
D4
Text GLabel 5000 3850 0    50   Input ~ 0
D5
Wire Wire Line
	5000 3750 5150 3750
Wire Wire Line
	5000 3850 5150 3850
Text Notes 4650 3800 0    50   ~ 0
ENC2
Text Notes 4650 3900 0    50   ~ 0
ENC2
Text Notes 4600 3600 0    50   ~ 0
OLED
Text Notes 4600 3700 0    50   ~ 0
OLED
Text GLabel 5000 4050 0    50   Input ~ 0
D7
Text GLabel 5000 3950 0    50   Input ~ 0
D6
$Comp
L power:GND #PWR0101
U 1 1 609D7794
P 4450 3450
F 0 "#PWR0101" H 4450 3200 50  0001 C CNN
F 1 "GND" H 4455 3277 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3450 5050 3450
Wire Wire Line
	5150 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3450
Connection ~ 5050 3450
Wire Wire Line
	5050 3450 5150 3450
$Comp
L power:GND #PWR0102
U 1 1 609D7E76
P 7100 3350
F 0 "#PWR0102" H 7100 3100 50  0001 C CNN
F 1 "GND" H 7100 3200 50  0000 C CNN
F 2 "" H 7100 3350 50  0001 C CNN
F 3 "" H 7100 3350 50  0001 C CNN
	1    7100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 7100 3250
Wire Wire Line
	7100 3250 7100 3350
$Comp
L Switch:SW_Push SW1
U 1 1 609D8350
P 8900 4000
F 0 "SW1" H 8900 4285 50  0000 C CNN
F 1 "RESET" H 8900 4194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 8900 4200 50  0001 C CNN
F 3 "" H 8900 4200 50  0001 C CNN
	1    8900 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 609D97AA
P 6900 3400
F 0 "#PWR0103" H 6900 3250 50  0001 C CNN
F 1 "+5V" H 6950 3400 50  0000 C CNN
F 2 "" H 6900 3400 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3450 6900 3450
Wire Wire Line
	6900 3450 6900 3400
Text GLabel 8550 4000 0    50   Input ~ 0
RST
Wire Wire Line
	6550 3350 6650 3350
$Comp
L power:GND #PWR0104
U 1 1 609DA516
P 9250 4050
F 0 "#PWR0104" H 9250 3800 50  0001 C CNN
F 1 "GND" H 9255 3877 50  0000 C CNN
F 2 "" H 9250 4050 50  0001 C CNN
F 3 "" H 9250 4050 50  0001 C CNN
	1    9250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4000 9250 4000
Wire Wire Line
	9250 4000 9250 4050
Wire Wire Line
	8700 4000 8550 4000
Text GLabel 6650 3350 2    50   Input ~ 0
RST
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 609DBDB8
P 3000 2500
F 0 "J1" H 3106 2778 50  0000 C CNN
F 1 "ENC1" H 3106 2687 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 3000 2500 50  0001 C CNN
F 3 "~" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 609DBE96
P 3000 3350
F 0 "J2" H 3106 3628 50  0000 C CNN
F 1 "ENC2" H 3106 3537 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 3000 3350 50  0001 C CNN
F 3 "~" H 3000 3350 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 609DBF6B
P 3000 4200
F 0 "J3" H 3106 4478 50  0000 C CNN
F 1 "OLED" H 3106 4387 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 3000 4200 50  0001 C CNN
F 3 "~" H 3000 4200 50  0001 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 609DC363
P 3550 3500
F 0 "#PWR0105" H 3550 3250 50  0001 C CNN
F 1 "GND" H 3555 3327 50  0000 C CNN
F 2 "" H 3550 3500 50  0001 C CNN
F 3 "" H 3550 3500 50  0001 C CNN
	1    3550 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 609DC3A0
P 3300 2700
F 0 "#PWR0106" H 3300 2450 50  0001 C CNN
F 1 "GND" H 3305 2527 50  0000 C CNN
F 2 "" H 3300 2700 50  0001 C CNN
F 3 "" H 3300 2700 50  0001 C CNN
	1    3300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2600 3300 2600
Wire Wire Line
	3300 2600 3300 2700
Text GLabel 3300 2500 2    50   Input ~ 0
D1
Text GLabel 3300 2400 2    50   Input ~ 0
D0
Text GLabel 3300 3350 2    50   Input ~ 0
D4
Text GLabel 3300 3450 2    50   Input ~ 0
D5
Wire Wire Line
	3200 2400 3300 2400
Text GLabel 3300 4300 2    50   Input ~ 0
SCL
Text GLabel 3300 4400 2    50   Input ~ 0
SDA
$Comp
L power:GND #PWR0109
U 1 1 609F291F
P 3650 4400
F 0 "#PWR0109" H 3650 4150 50  0001 C CNN
F 1 "GND" H 3655 4227 50  0000 C CNN
F 2 "" H 3650 4400 50  0001 C CNN
F 3 "" H 3650 4400 50  0001 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 609F6326
P 3300 4200
F 0 "#PWR0110" H 3300 4050 50  0001 C CNN
F 1 "+5V" V 3300 4400 50  0000 C CNN
F 2 "" H 3300 4200 50  0001 C CNN
F 3 "" H 3300 4200 50  0001 C CNN
	1    3300 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4300 3250 4300
Wire Wire Line
	3200 4400 3300 4400
Text GLabel 3350 5100 2    50   Input ~ 0
A0
Text GLabel 3350 5200 2    50   Input ~ 0
A1
Text GLabel 3350 5300 2    50   Input ~ 0
A2
Text GLabel 3350 5400 2    50   Input ~ 0
A3
Text GLabel 3350 5500 2    50   Input ~ 0
D16
Text GLabel 3350 5600 2    50   Input ~ 0
D14
Text GLabel 3350 5700 2    50   Input ~ 0
D15
Text GLabel 5000 4150 0    50   Input ~ 0
D8
Text GLabel 5000 4250 0    50   Input ~ 0
D9
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 60A5C0F2
P 3000 5200
F 0 "J4" H 3106 5478 50  0000 C CNN
F 1 "ROW" H 3106 5387 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 3000 5200 50  0001 C CNN
F 3 "~" H 3000 5200 50  0001 C CNN
	1    3000 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60A5C14D
P 3000 5600
F 0 "J5" H 3106 5878 50  0000 C CNN
F 1 "COL" H 3106 5787 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B03B-XH-A_1x03_P2.50mm_Vertical" H 3000 5600 50  0001 C CNN
F 3 "~" H 3000 5600 50  0001 C CNN
	1    3000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5100 3350 5100
Wire Wire Line
	3200 5200 3350 5200
Wire Wire Line
	3200 5300 3350 5300
Wire Wire Line
	3200 5400 3350 5400
Wire Wire Line
	3200 5500 3350 5500
Wire Wire Line
	3200 5600 3350 5600
Wire Wire Line
	3200 5700 3350 5700
Wire Wire Line
	3550 3250 3550 3500
Wire Wire Line
	3200 3250 3550 3250
$Comp
L Device:Buzzer BZ1
U 1 1 60A0CD2E
P 8950 4850
F 0 "BZ1" H 9103 4879 50  0000 L CNN
F 1 "Buzzer" H 9103 4788 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_ProSignal_ABI-010-RC" V 8925 4950 50  0001 C CNN
F 3 "~" V 8925 4950 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4250 5150 4250
Text GLabel 8700 4750 0    50   Input ~ 0
D9
$Comp
L power:GND #PWR0111
U 1 1 60A104AA
P 8450 5000
F 0 "#PWR0111" H 8450 4750 50  0001 C CNN
F 1 "GND" H 8450 4850 50  0000 C CNN
F 2 "" H 8450 5000 50  0001 C CNN
F 3 "" H 8450 5000 50  0001 C CNN
	1    8450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4750 8850 4750
Wire Wire Line
	3200 2500 3250 2500
Wire Wire Line
	3200 3350 3250 3350
Wire Wire Line
	3200 3450 3300 3450
$Comp
L Mechanical:MountingHole MH1
U 1 1 60A1EC4F
P 7450 1700
F 0 "MH1" H 7550 1746 50  0000 L CNN
F 1 "M3" H 7550 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 7450 1700 50  0001 C CNN
F 3 "~" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 60A1EC79
P 7450 1950
F 0 "MH2" H 7550 1996 50  0000 L CNN
F 1 "M3" H 7550 1905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 7450 1950 50  0001 C CNN
F 3 "~" H 7450 1950 50  0001 C CNN
	1    7450 1950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60A6AD5A
P 8950 3150
F 0 "SW2" H 8950 3435 50  0000 C CNN
F 1 "Layer" H 8950 3344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 8950 3350 50  0001 C CNN
F 3 "" H 8950 3350 50  0001 C CNN
	1    8950 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60A6AEB4
P 9300 3200
F 0 "#PWR0107" H 9300 2950 50  0001 C CNN
F 1 "GND" H 9305 3027 50  0000 C CNN
F 2 "" H 9300 3200 50  0001 C CNN
F 3 "" H 9300 3200 50  0001 C CNN
	1    9300 3200
	1    0    0    -1  
$EndComp
Text GLabel 8700 3250 3    50   Input ~ 0
D10
$Comp
L power:+5V #PWR0108
U 1 1 60A6AFCB
P 8300 3100
F 0 "#PWR0108" H 8300 2950 50  0001 C CNN
F 1 "+5V" H 8200 3200 50  0000 C CNN
F 2 "" H 8300 3100 50  0001 C CNN
F 3 "" H 8300 3100 50  0001 C CNN
	1    8300 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 60A6B195
P 8500 3150
F 0 "R1" V 8295 3150 50  0000 C CNN
F 1 "10k" V 8386 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8540 3140 50  0001 C CNN
F 3 "~" H 8500 3150 50  0001 C CNN
	1    8500 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3150 8700 3150
Wire Wire Line
	9150 3150 9300 3150
Wire Wire Line
	9300 3150 9300 3200
Wire Wire Line
	8700 3250 8700 3150
Connection ~ 8700 3150
Wire Wire Line
	8700 3150 8750 3150
Wire Wire Line
	8300 3100 8300 3150
Wire Wire Line
	8300 3150 8350 3150
Wire Wire Line
	6550 4250 6700 4250
Text Notes 6900 4300 0    50   ~ 0
Layer Button
Text Notes 4600 4300 0    50   ~ 0
Buzzer
$Comp
L Device:R_US R2
U 1 1 60A76C73
P 8650 4950
F 0 "R2" V 8550 4950 50  0000 C CNN
F 1 "100R" V 8750 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8690 4940 50  0001 C CNN
F 3 "~" H 8650 4950 50  0001 C CNN
	1    8650 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4950 8850 4950
Wire Wire Line
	8500 4950 8450 4950
Wire Wire Line
	8450 4950 8450 5000
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 60A7BA93
P 5550 5750
F 0 "Q1" V 5893 5750 50  0000 C CNN
F 1 "IRF540N" V 5802 5750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5800 5675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5550 5750 50  0001 L CNN
	1    5550 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 60A7BC0E
P 5550 6250
F 0 "R3" H 5650 6200 50  0000 C CNN
F 1 "1k" H 5700 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5590 6240 50  0001 C CNN
F 3 "~" H 5550 6250 50  0001 C CNN
	1    5550 6250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60A7BF7D
P 5900 5750
F 0 "#PWR0112" H 5900 5500 50  0001 C CNN
F 1 "GND" H 5900 5600 50  0000 C CNN
F 2 "" H 5900 5750 50  0001 C CNN
F 3 "" H 5900 5750 50  0001 C CNN
	1    5900 5750
	1    0    0    -1  
$EndComp
Text GLabel 5250 5650 0    50   Input ~ 0
MOSFET
Wire Wire Line
	5750 5650 5900 5650
Wire Wire Line
	5900 5650 5900 5750
Text GLabel 5550 6550 3    50   Input ~ 0
D8
Wire Wire Line
	5550 6550 5550 6400
Wire Wire Line
	5550 5950 5550 6100
Wire Wire Line
	5250 5650 5350 5650
Wire Wire Line
	5000 4150 5150 4150
Text Notes 4850 4200 2    50   ~ 0
MOSFET
$Comp
L Device:R_US R4
U 1 1 60AA5993
P 2550 4550
F 0 "R4" V 2345 4550 50  0000 C CNN
F 1 "10k" V 2436 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2590 4540 50  0001 C CNN
F 3 "~" H 2550 4550 50  0001 C CNN
	1    2550 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 60AA5B1E
P 2550 4700
F 0 "R5" V 2750 4700 50  0000 C CNN
F 1 "10k" V 2650 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2590 4690 50  0001 C CNN
F 3 "~" H 2550 4700 50  0001 C CNN
	1    2550 4700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 60AA5C99
P 2150 4550
F 0 "#PWR0113" H 2150 4400 50  0001 C CNN
F 1 "+5V" V 2150 4750 50  0000 C CNN
F 2 "" H 2150 4550 50  0001 C CNN
F 3 "" H 2150 4550 50  0001 C CNN
	1    2150 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 4550 2250 4550
Wire Wire Line
	2400 4700 2250 4700
Wire Wire Line
	2250 4700 2250 4550
Connection ~ 2250 4550
Wire Wire Line
	2250 4550 2400 4550
Wire Wire Line
	2700 4550 3200 4550
Wire Wire Line
	3200 4550 3200 4400
Connection ~ 3200 4400
Wire Wire Line
	2700 4700 3250 4700
Wire Wire Line
	3250 4700 3250 4300
Connection ~ 3250 4300
Wire Wire Line
	3250 4300 3300 4300
Wire Wire Line
	3200 4200 3300 4200
Wire Wire Line
	3200 4100 3650 4100
Wire Wire Line
	3650 4100 3650 4400
$Comp
L Device:R_US R6
U 1 1 60AB3124
P 2550 1900
F 0 "R6" V 2750 1900 50  0000 C CNN
F 1 "10k" V 2650 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2590 1890 50  0001 C CNN
F 3 "~" H 2550 1900 50  0001 C CNN
	1    2550 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 60AB3354
P 2550 1750
F 0 "R7" V 2350 1750 50  0000 C CNN
F 1 "10k" V 2450 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2590 1740 50  0001 C CNN
F 3 "~" H 2550 1750 50  0001 C CNN
	1    2550 1750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 60AB35DB
P 2250 1750
F 0 "#PWR0114" H 2250 1600 50  0001 C CNN
F 1 "+5V" V 2250 1950 50  0000 C CNN
F 2 "" H 2250 1750 50  0001 C CNN
F 3 "" H 2250 1750 50  0001 C CNN
	1    2250 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1750 2300 1750
Wire Wire Line
	2400 1900 2300 1900
Wire Wire Line
	2300 1900 2300 1750
Connection ~ 2300 1750
Wire Wire Line
	2300 1750 2400 1750
Wire Wire Line
	2700 1900 3200 1900
Wire Wire Line
	3200 1900 3200 2400
Connection ~ 3200 2400
Wire Wire Line
	2700 1750 3250 1750
Wire Wire Line
	3250 1750 3250 2500
Connection ~ 3250 2500
Wire Wire Line
	3250 2500 3300 2500
$Comp
L Device:R_US R9
U 1 1 60ABCE74
P 2600 3150
F 0 "R9" V 2800 3150 50  0000 C CNN
F 1 "10k" V 2700 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2640 3140 50  0001 C CNN
F 3 "~" H 2600 3150 50  0001 C CNN
	1    2600 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 60ABCF42
P 2600 3000
F 0 "R8" V 2400 3000 50  0000 C CNN
F 1 "10k" V 2500 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2640 2990 50  0001 C CNN
F 3 "~" H 2600 3000 50  0001 C CNN
	1    2600 3000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 60ABCFEC
P 2250 3000
F 0 "#PWR0115" H 2250 2850 50  0001 C CNN
F 1 "+5V" V 2250 3200 50  0000 C CNN
F 2 "" H 2250 3000 50  0001 C CNN
F 3 "" H 2250 3000 50  0001 C CNN
	1    2250 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3000 2350 3000
Wire Wire Line
	2450 3150 2350 3150
Wire Wire Line
	2350 3150 2350 3000
Connection ~ 2350 3000
Wire Wire Line
	2350 3000 2450 3000
Wire Wire Line
	2750 3000 3250 3000
Wire Wire Line
	3250 3000 3250 3350
Connection ~ 3250 3350
Wire Wire Line
	3250 3350 3300 3350
Wire Wire Line
	2750 3150 2900 3150
Wire Wire Line
	2900 3150 2900 3550
Wire Wire Line
	2900 3550 3200 3550
Wire Wire Line
	3200 3550 3200 3450
Connection ~ 3200 3450
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 60ACC1F9
P 4300 6350
F 0 "J7" V 4360 6390 50  0000 L CNN
F 1 "Backlight" V 4451 6390 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4300 6350 50  0001 C CNN
F 3 "~" H 4300 6350 50  0001 C CNN
	1    4300 6350
	0    1    1    0   
$EndComp
Text GLabel 4200 6700 3    50   Input ~ 0
MOSFET
$Comp
L power:+5V #PWR0116
U 1 1 60ACC656
P 4300 6700
F 0 "#PWR0116" H 4300 6550 50  0001 C CNN
F 1 "+5V" V 4300 6900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4300 6700 50  0001 C CNN
F 3 "" H 4300 6700 50  0001 C CNN
	1    4300 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 6550 4300 6700
Wire Wire Line
	4200 6550 4200 6700
Wire Wire Line
	5000 3550 5150 3550
Wire Wire Line
	5000 3650 5150 3650
$EndSCHEMATC
