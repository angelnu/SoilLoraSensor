EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Generic STM32 batterry sensor for Lorawan"
Date "2020-06-28"
Rev "2.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5ECAD610
P 5800 4850
F 0 "#PWR0101" H 5800 4600 50  0001 C CNN
F 1 "GND" H 5805 4677 50  0000 C CNN
F 2 "" H 5800 4850 50  0001 C CNN
F 3 "" H 5800 4850 50  0001 C CNN
	1    5800 4850
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L0:STM32L041K6Tx U1
U 1 1 5ECAC074
P 5850 3700
F 0 "U1" H 5800 4050 50  0000 C CNN
F 1 "STM32L041K6Tx" H 5800 3950 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 5350 2800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00152023.pdf" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4700 5750 4850
Wire Wire Line
	5750 4850 5800 4850
Wire Wire Line
	5800 4850 5850 4850
Wire Wire Line
	5850 4850 5850 4700
Connection ~ 5800 4850
$Comp
L power:VDDA #PWR0102
U 1 1 5ECB0E10
P 5950 2450
F 0 "#PWR0102" H 5950 2300 50  0001 C CNN
F 1 "VDDA" H 5967 2623 50  0000 C CNN
F 2 "" H 5950 2450 50  0001 C CNN
F 3 "" H 5950 2450 50  0001 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5ECB1FA2
P 4800 3650
F 0 "Y1" V 4846 3519 50  0000 R CNN
F 1 "32KHz" V 4755 3519 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 4800 3650 50  0001 C CNN
F 3 "NX3215SA" H 4800 3650 50  0001 C CNN
	1    4800 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3600 5250 3500
Wire Wire Line
	5250 3800 5250 3700
$Comp
L Device:C C2
U 1 1 5ECB38BC
P 4650 3500
F 0 "C2" V 4450 3500 50  0000 C CNN
F 1 "10 pF" V 4550 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 3350 50  0001 C CNN
F 3 "~" H 4650 3500 50  0001 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
Connection ~ 4800 3500
$Comp
L Device:C C1
U 1 1 5ECB4DA6
P 4650 3800
F 0 "C1" V 4800 3800 50  0000 C CNN
F 1 "10 pF" V 4900 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 3650 50  0001 C CNN
F 3 "~" H 4650 3800 50  0001 C CNN
	1    4650 3800
	0    1    1    0   
$EndComp
Connection ~ 4800 3800
$Comp
L power:GND #PWR0103
U 1 1 5ECB6835
P 4450 3650
F 0 "#PWR0103" H 4450 3400 50  0001 C CNN
F 1 "GND" V 4455 3522 50  0001 R CNN
F 2 "" H 4450 3650 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3500 4500 3650
Wire Wire Line
	4450 3650 4500 3650
Connection ~ 4500 3650
Wire Wire Line
	4500 3650 4500 3800
$Comp
L Switch:SW_Push SW2
U 1 1 5ECB7E79
P 5050 3000
F 0 "SW2" H 5050 3285 50  0000 C CNN
F 1 "RESET" H 5050 3194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 5050 3200 50  0001 C CNN
F 3 "~" H 5050 3200 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5ECB9728
P 4300 3200
F 0 "SW1" H 4300 3485 50  0000 C CNN
F 1 "BOOT" H 4300 3394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4300 3400 50  0001 C CNN
F 3 "~" H 4300 3400 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5ECBA44B
P 5000 2600
F 0 "C4" V 4748 2600 50  0000 C CNN
F 1 "100 nF" V 4839 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 2450 50  0001 C CNN
F 3 "~" H 5000 2600 50  0001 C CNN
	1    5000 2600
	0    1    1    0   
$EndComp
Connection ~ 4500 3200
Wire Wire Line
	5250 3000 5250 2600
Wire Wire Line
	5150 2600 5250 2600
Connection ~ 5250 3000
Wire Wire Line
	4100 3200 4100 2750
Wire Wire Line
	4100 2750 4150 2750
$Comp
L power:GND #PWR0104
U 1 1 5ECBD389
P 4850 3000
F 0 "#PWR0104" H 4850 2750 50  0001 C CNN
F 1 "GND" H 4855 2827 50  0001 C CNN
F 2 "" H 4850 3000 50  0001 C CNN
F 3 "" H 4850 3000 50  0001 C CNN
	1    4850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5ECBDAC5
P 4100 2750
F 0 "#PWR0105" H 4100 2600 50  0001 C CNN
F 1 "+3.3V" H 4115 2923 50  0001 C CNN
F 2 "" H 4100 2750 50  0001 C CNN
F 3 "" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
Connection ~ 4100 2750
Wire Wire Line
	4800 3500 5250 3500
Wire Wire Line
	4800 3800 5250 3800
$Comp
L Device:C C5
U 1 1 5ECC3138
P 5600 2750
F 0 "C5" V 5400 2750 50  0000 C CNN
F 1 "100 nF" V 5450 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 2600 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
	1    5600 2750
	0    1    1    0   
$EndComp
Connection ~ 5750 2750
Wire Wire Line
	5750 2750 5750 2800
$Comp
L Device:C C6
U 1 1 5ECC45A5
P 5600 2400
F 0 "C6" V 5348 2400 50  0000 C CNN
F 1 "100 nF" V 5439 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 2250 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    1    1    0   
$EndComp
Connection ~ 5750 2400
Wire Wire Line
	5750 2400 5750 2750
Wire Wire Line
	5850 2400 5750 2400
Wire Wire Line
	5850 2400 5850 2800
Wire Wire Line
	5450 2750 5450 2400
Connection ~ 5450 2400
Wire Wire Line
	5750 2100 5750 2400
$Comp
L Device:C C7
U 1 1 5ECC9C7E
P 6150 2600
F 0 "C7" V 6000 2600 50  0000 C CNN
F 1 "100 nF" V 5950 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 2450 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5ECCB17B
P 6500 2600
F 0 "C8" V 6350 2600 50  0000 C CNN
F 1 "1 uF" V 6300 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 2450 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2450 6500 2450
Wire Wire Line
	6150 2750 6300 2750
$Comp
L power:GND #PWR0106
U 1 1 5ECCC31E
P 6300 2750
F 0 "#PWR0106" H 6300 2500 50  0001 C CNN
F 1 "GND" H 6305 2577 50  0000 C CNN
F 2 "" H 6300 2750 50  0001 C CNN
F 3 "" H 6300 2750 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
Connection ~ 6300 2750
Wire Wire Line
	6300 2750 6500 2750
Wire Wire Line
	5950 2450 6150 2450
Wire Wire Line
	5950 2450 5950 2800
Connection ~ 6150 2450
Connection ~ 5950 2450
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5ECCEBAA
P 6300 2100
F 0 "FB1" V 6450 2100 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 6154 2100 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 2100 50  0001 C CNN
F 3 "~" H 6300 2100 50  0001 C CNN
	1    6300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2100 6050 2100
Wire Wire Line
	6400 2100 6500 2100
Wire Wire Line
	6500 2100 6500 2450
Connection ~ 6500 2450
Text GLabel 6350 3500 2    50   Input ~ 0
SCK
Text GLabel 6350 3600 2    50   Input ~ 0
MISO
Text GLabel 6350 3700 2    50   Input ~ 0
MOSI
Text GLabel 6350 4300 2    50   Input ~ 0
SWDIO
Text GLabel 6350 4400 2    50   Input ~ 0
SWCLK
Text GLabel 6350 3300 2    50   Input ~ 0
RX
Text GLabel 6350 3200 2    50   Input ~ 0
TX
$Comp
L RF_Module:RFM95W-868S2 U2
U 1 1 5ECD2FAF
P 7750 2650
F 0 "U2" H 7750 2650 50  0000 C CNN
F 1 "RFM95W-868S2" H 7650 2550 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 4450 4300 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 4450 4300 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
Text GLabel 7250 2350 0    50   Input ~ 0
SCK
Text GLabel 7250 2550 0    50   Input ~ 0
MISO
Text GLabel 7250 2450 0    50   Input ~ 0
MOSI
Wire Wire Line
	7650 3250 7750 3250
Wire Wire Line
	7850 3250 7750 3250
Connection ~ 7750 3250
$Comp
L power:GND #PWR0107
U 1 1 5ECD67D9
P 7750 3250
F 0 "#PWR0107" H 7750 3000 50  0001 C CNN
F 1 "GND" H 7755 3077 50  0000 C CNN
F 2 "" H 7750 3250 50  0001 C CNN
F 3 "" H 7750 3250 50  0001 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5ECD7396
P 7750 1950
F 0 "#PWR0108" H 7750 1800 50  0001 C CNN
F 1 "+3.3V" H 7765 2123 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5ECD8914
P 7950 2050
F 0 "C9" V 7698 2050 50  0000 C CNN
F 1 "100 nF" V 7789 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7988 1900 50  0001 C CNN
F 3 "~" H 7950 2050 50  0001 C CNN
	1    7950 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1950 7750 2050
Wire Wire Line
	7750 2050 7800 2050
Connection ~ 7750 2050
Wire Wire Line
	7750 2050 7750 2150
$Comp
L power:GND #PWR0109
U 1 1 5ECDA993
P 8100 2050
F 0 "#PWR0109" H 8100 1800 50  0001 C CNN
F 1 "GND" H 8105 1877 50  0000 C CNN
F 2 "" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0001 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
Text GLabel 8250 3050 2    50   Input ~ 0
DIO0
Text GLabel 8250 2950 2    50   Input ~ 0
DIO1
Text GLabel 8250 2850 2    50   Input ~ 0
DIO2
Text GLabel 7250 2850 0    50   Input ~ 0
RESET
Text GLabel 7250 2650 0    50   Input ~ 0
NSS
$Comp
L Device:Antenna AE1
U 1 1 5ECDC133
P 8350 2050
F 0 "AE1" H 8430 2039 50  0000 L CNN
F 1 "Antenna_Chip" H 8430 1948 50  0000 L CNN
F 2 "RF_Antenna:Texas_SWRA416_868MHz_915MHz" H 8250 2225 50  0001 C CNN
F 3 "~" H 8250 2225 50  0001 C CNN
	1    8350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2350 8350 2350
Wire Wire Line
	8350 2350 8350 2250
$Comp
L power:GND #PWR0111
U 1 1 5ECE13EE
P 8000 4900
F 0 "#PWR0111" H 8000 4650 50  0001 C CNN
F 1 "GND" H 8005 4727 50  0000 C CNN
F 2 "" H 8000 4900 50  0001 C CNN
F 3 "" H 8000 4900 50  0001 C CNN
	1    8000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5ECE1F3D
P 8000 4400
F 0 "#PWR0112" H 8000 4250 50  0001 C CNN
F 1 "+3.3V" H 8150 4550 50  0000 C CNN
F 2 "" H 8000 4400 50  0001 C CNN
F 3 "" H 8000 4400 50  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
Text GLabel 8000 4700 2    50   Input ~ 0
SWDIO
Text GLabel 8000 4800 2    50   Input ~ 0
SWCLK
Text GLabel 8000 4600 2    50   Input ~ 0
TX
Text GLabel 8000 4500 2    50   Input ~ 0
RX
Text GLabel 6350 3400 2    50   Input ~ 0
NSS
Text GLabel 5250 3900 0    50   Input ~ 0
RESET
$Comp
L Device:Battery_Cell BT1
U 1 1 5ED19278
P 7000 4800
F 0 "BT1" H 7118 4896 50  0000 L CNN
F 1 "Battery_Cell" H 7118 4805 50  0000 L CNN
F 2 "Battery:CR123_holder" V 7000 4860 50  0001 C CNN
F 3 "~" V 7000 4860 50  0001 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5ED1B07F
P 7000 4900
F 0 "#PWR0113" H 7000 4650 50  0001 C CNN
F 1 "GND" H 7005 4727 50  0000 C CNN
F 2 "" H 7000 4900 50  0001 C CNN
F 3 "" H 7000 4900 50  0001 C CNN
	1    7000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5ED1BA2E
P 7000 4600
F 0 "#PWR0114" H 7000 4450 50  0001 C CNN
F 1 "+3.3V" H 7015 4773 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5ED1FD6B
P 7800 4600
F 0 "J1" H 7650 4350 50  0000 C CNN
F 1 "Conn_01x06_Male" H 7950 4050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7800 4600 50  0001 C CNN
F 3 "~" H 7800 4600 50  0001 C CNN
	1    7800 4600
	1    0    0    -1  
$EndComp
Text GLabel 6350 4200 2    50   Input ~ 0
DIO2
Text GLabel 6350 4100 2    50   Input ~ 0
DIO1
Text GLabel 6350 4000 2    50   Input ~ 0
DIO0
$Comp
L Device:R R7
U 1 1 5ED6BC7D
P 4300 3300
F 0 "R7" V 4507 3300 50  0000 C CNN
F 1 "12K" V 4416 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 3300 50  0001 C CNN
F 3 "~" H 4300 3300 50  0001 C CNN
	1    4300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3200 5250 3200
$Comp
L Device:C C10
U 1 1 5ED760B9
P 5600 1950
F 0 "C10" V 5348 1950 50  0000 C CNN
F 1 "1 uF" V 5439 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 1800 50  0001 C CNN
F 3 "~" H 5600 1950 50  0001 C CNN
	1    5600 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2100 5750 1950
Connection ~ 5750 2100
$Comp
L power:+3.3V #PWR0110
U 1 1 5ED79729
P 6050 2100
F 0 "#PWR0110" H 6050 1950 50  0001 C CNN
F 1 "+3.3V" H 6065 2273 50  0001 C CNN
F 2 "" H 6050 2100 50  0001 C CNN
F 3 "" H 6050 2100 50  0001 C CNN
	1    6050 2100
	1    0    0    -1  
$EndComp
Connection ~ 6050 2100
Wire Wire Line
	6050 2100 6200 2100
$Comp
L power:GND #PWR0115
U 1 1 5ED7B5C9
P 5450 2750
F 0 "#PWR0115" H 5450 2500 50  0001 C CNN
F 1 "GND" H 5455 2577 50  0001 C CNN
F 2 "" H 5450 2750 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 2750
	1    0    0    -1  
$EndComp
Connection ~ 5450 2750
Wire Wire Line
	5450 1950 5450 2400
Wire Wire Line
	4450 3300 4500 3300
Wire Wire Line
	4500 3300 4500 3200
$Comp
L power:GND #PWR0116
U 1 1 5ED80220
P 4150 3300
F 0 "#PWR0116" H 4150 3050 50  0001 C CNN
F 1 "GND" H 4155 3127 50  0001 C CNN
F 2 "" H 4150 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0001 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5EDFEDD2
P 4350 4450
F 0 "D1" H 4343 4666 50  0000 C CNN
F 1 "LED" H 4343 4575 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4350 4450 50  0001 C CNN
F 3 "~" H 4350 4450 50  0001 C CNN
	1    4350 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EDFFD28
P 4350 4150
F 0 "R3" V 4350 4150 50  0000 C CNN
F 1 "12K" V 4234 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4280 4150 50  0001 C CNN
F 3 "~" H 4350 4150 50  0001 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EE010DB
P 4350 4600
F 0 "#PWR0119" H 4350 4350 50  0001 C CNN
F 1 "GND" H 4355 4427 50  0000 C CNN
F 2 "" H 4350 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Connection ~ 4850 3000
Wire Wire Line
	4850 3000 4850 2600
Wire Wire Line
	5250 4000 4350 4000
Text GLabel 5250 4500 0    50   Input ~ 0
B7
Text GLabel 5250 4400 0    50   Input ~ 0
B6
Text GLabel 5250 4300 0    50   Input ~ 0
B5
Text GLabel 5250 4200 0    50   Input ~ 0
B4
Text GLabel 5250 4100 0    50   Input ~ 0
B3
Text GLabel 6350 4500 2    50   Input ~ 0
A15
Text GLabel 6350 3800 2    50   Input ~ 0
A8
Text GLabel 6350 3900 2    50   Input ~ 0
A9
Text GLabel 6350 3000 2    50   Input ~ 0
A0
Text GLabel 6350 3100 2    50   Input ~ 0
A1
$Comp
L Connector:Conn_01x09_Male J2
U 1 1 5EF8FA5D
P 8500 4500
F 0 "J2" H 8608 5081 50  0000 C CNN
F 1 "Conn_01x09_Male" H 8700 3850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 8500 4500 50  0001 C CNN
F 3 "~" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5EF91CDC
P 7800 3850
F 0 "J3" H 7908 4131 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7900 3550 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x02_P2.54mm_Vertical" H 7800 3850 50  0001 C CNN
F 3 "~" H 7800 3850 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5EF929BF
P 8700 4900
F 0 "#PWR0117" H 8700 4650 50  0001 C CNN
F 1 "GND" H 8705 4727 50  0000 C CNN
F 2 "" H 8700 4900 50  0001 C CNN
F 3 "" H 8700 4900 50  0001 C CNN
	1    8700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4900 8700 4800
Connection ~ 8700 4900
Text GLabel 8700 4700 2    50   Input ~ 0
A15
$Comp
L power:+3.3V #PWR0118
U 1 1 5EF93D92
P 8700 4100
F 0 "#PWR0118" H 8700 3950 50  0001 C CNN
F 1 "+3.3V" H 8850 4250 50  0000 C CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Text GLabel 8700 4600 2    50   Input ~ 0
B3
Text GLabel 8700 4500 2    50   Input ~ 0
B4
Text GLabel 8700 4400 2    50   Input ~ 0
B5
Text GLabel 8700 4300 2    50   Input ~ 0
B6
Text GLabel 8700 4200 2    50   Input ~ 0
B7
Text GLabel 8000 3750 2    50   Input ~ 0
A9
Text GLabel 8000 3850 2    50   Input ~ 0
A0
Text GLabel 8000 3950 2    50   Input ~ 0
A8
Text GLabel 8000 4050 2    50   Input ~ 0
A1
$Comp
L Mechanical:MountingHole H1
U 1 1 5EF98972
P 7000 3800
F 0 "H1" H 7100 3846 50  0000 L CNN
F 1 "MountingHole" H 7100 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7000 3800 50  0001 C CNN
F 3 "~" H 7000 3800 50  0001 C CNN
	1    7000 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EF98C6E
P 7000 4000
F 0 "H2" H 7100 4046 50  0000 L CNN
F 1 "MountingHole" H 7100 3955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 7000 4000 50  0001 C CNN
F 3 "~" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
