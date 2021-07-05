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
Text Notes 9800 11050 0    50   ~ 0
Enclosure:\nhttp://www.hammondmfg.com/pdf/1551HFL.pdf
Text Notes 9800 11050 0    50   ~ 0
Enclosure:\nhttp://www.hammondmfg.com/pdf/1551HFL.pdf
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C196E97
P 1800 1250
F 0 "J1" H 1880 1242 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1880 1151 50  0000 L CNN
F 2 "digikey-footprints:Term_Block_1x2_P5.08MM" H 1800 1250 50  0001 C CNN
F 3 "~" H 1800 1250 50  0001 C CNN
	1    1800 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C19A847
P 2100 1350
F 0 "#PWR04" H 2100 1100 50  0001 C CNN
F 1 "GND" H 2105 1177 50  0000 C CNN
F 2 "" H 2100 1350 50  0001 C CNN
F 3 "" H 2100 1350 50  0001 C CNN
	1    2100 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 1350 2100 1250
Wire Wire Line
	2100 1250 2000 1250
$Comp
L power:+VDC #PWR06
U 1 1 5C62210F
P 2450 950
F 0 "#PWR06" H 2450 850 50  0001 C CNN
F 1 "+VDC" H 2450 1225 50  0000 C CNN
F 2 "" H 2450 950 50  0001 C CNN
F 3 "" H 2450 950 50  0001 C CNN
	1    2450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1150 2450 950 
$Comp
L Transistor_FET:IRLML6402 Q1
U 1 1 5F55921C
P 1300 6250
F 0 "Q1" H 1505 6296 50  0000 L CNN
F 1 "SSM3J340R" H 1505 6205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1500 6175 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 1300 6250 50  0001 L CNN
	1    1300 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F559223
P 1300 6450
F 0 "#PWR02" H 1300 6200 50  0001 C CNN
F 1 "GND" H 1305 6277 50  0000 C CNN
F 2 "" H 1300 6450 50  0001 C CNN
F 3 "" H 1300 6450 50  0001 C CNN
	1    1300 6450
	-1   0    0    -1  
$EndComp
Text Notes 750  5500 0    50   ~ 0
Reverse Polarity Protection
Wire Wire Line
	1500 6150 1700 6150
Wire Wire Line
	1700 6150 1700 6450
Wire Wire Line
	2000 1150 2450 1150
$Comp
L power:+VDC #PWR01
U 1 1 5F57BB0D
P 900 6000
F 0 "#PWR01" H 900 5900 50  0001 C CNN
F 1 "+VDC" H 900 6275 50  0000 C CNN
F 2 "" H 900 6000 50  0001 C CNN
F 3 "" H 900 6000 50  0001 C CNN
	1    900  6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6000 900  6150
Wire Wire Line
	900  6150 1100 6150
Text GLabel 1700 6150 2    50   Input ~ 0
Vin
$Comp
L esp32-c3:esp32-c3-mini U3
U 1 1 60F382C9
P 7850 1900
F 0 "U3" H 7850 2825 50  0000 C CNN
F 1 "esp32-c3-mini" H 7850 2734 50  0000 C CNN
F 2 "ESP32-C3:esp32-c3-mini" H 7900 2800 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-c3-mini-1_datasheet_en.pdf" H 7400 2450 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60F45A49
P 6300 6450
F 0 "R2" H 6370 6496 50  0000 L CNN
F 1 "2.2k" H 6370 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 6450 50  0001 C CNN
F 3 "~" H 6300 6450 50  0001 C CNN
	1    6300 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FB96BE0
P 6300 6850
F 0 "D1" V 6338 6733 50  0000 R CNN
F 1 "LED RED" V 6247 6733 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6300 6850 50  0001 C CNN
F 3 "~" H 6300 6850 50  0001 C CNN
	1    6300 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 6450 1700 6550
Connection ~ 1700 6450
Wire Wire Line
	6300 6250 6300 6300
Wire Wire Line
	6300 6600 6300 6700
$Comp
L Device:CP C1
U 1 1 60F45A4B
P 1700 6700
F 0 "C1" H 1818 6746 50  0000 L CNN
F 1 "47u" H 1818 6655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.50mm" H 1738 6550 50  0001 C CNN
F 3 "~" H 1700 6700 50  0001 C CNN
	1    1700 6700
	1    0    0    -1  
$EndComp
$Comp
L Compressor-Speed-Controller-rescue:TPS560430X3FDBVT-2020-03-21_21-50-57-12V-SmartSwitch-rescue U1
U 1 1 5E8B6D6B
P 2700 6250
F 0 "U1" H 3500 6637 60  0000 C CNN
F 1 "TPS560430X3FDBVT" H 3500 6531 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3500 6490 60  0001 C CNN
F 3 "" H 2700 6250 60  0000 C CNN
	1    2700 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E8E7EA0
P 2200 6700
F 0 "C2" H 2315 6746 50  0000 L CNN
F 1 "2.2uF" H 2315 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2238 6550 50  0001 C CNN
F 3 "~" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6450 2200 6450
Wire Wire Line
	2200 6550 2200 6450
Connection ~ 2200 6450
Wire Wire Line
	2200 6450 2450 6450
$Comp
L power:GND #PWR03
U 1 1 5E8F6715
P 1700 6850
F 0 "#PWR03" H 1700 6600 50  0001 C CNN
F 1 "GND" H 1705 6677 50  0000 C CNN
F 2 "" H 1700 6850 50  0001 C CNN
F 3 "" H 1700 6850 50  0001 C CNN
	1    1700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E8FD676
P 2200 6850
F 0 "#PWR07" H 2200 6600 50  0001 C CNN
F 1 "GND" H 2205 6677 50  0000 C CNN
F 2 "" H 2200 6850 50  0001 C CNN
F 3 "" H 2200 6850 50  0001 C CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6250 2450 6250
Wire Wire Line
	2450 6250 2450 6450
Connection ~ 2450 6450
Wire Wire Line
	2450 6450 2700 6450
$Comp
L power:GND #PWR012
U 1 1 5E90C12F
P 4300 6750
F 0 "#PWR012" H 4300 6500 50  0001 C CNN
F 1 "GND" H 4305 6577 50  0000 C CNN
F 2 "" H 4300 6750 50  0001 C CNN
F 3 "" H 4300 6750 50  0001 C CNN
	1    4300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6750 4300 6650
$Comp
L Device:L L1
U 1 1 5E91C20B
P 4700 6250
F 0 "L1" V 4890 6250 50  0000 C CNN
F 1 "10uH" V 4799 6250 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 4700 6250 50  0001 C CNN
F 3 "~" H 4700 6250 50  0001 C CNN
	1    4700 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 6250 4850 6250
Wire Wire Line
	4550 6250 4450 6250
$Comp
L Device:C C5
U 1 1 60F45A51
P 5650 6450
F 0 "C5" H 5765 6496 50  0000 L CNN
F 1 "22uF" H 5765 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5688 6300 50  0001 C CNN
F 3 "~" H 5650 6450 50  0001 C CNN
	1    5650 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60F45A52
P 4450 6450
F 0 "C4" H 4565 6496 50  0000 L CNN
F 1 "0.1uF" H 4565 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 6300 50  0001 C CNN
F 3 "~" H 4450 6450 50  0001 C CNN
	1    4450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6250 5650 6250
Wire Wire Line
	5650 6250 5650 6300
Connection ~ 5050 6250
Wire Wire Line
	4450 6300 4450 6250
Connection ~ 4450 6250
Wire Wire Line
	4450 6250 4300 6250
Wire Wire Line
	4450 6600 4450 7000
Wire Wire Line
	4450 7000 2700 7000
Wire Wire Line
	2700 7000 2700 6650
$Comp
L power:GND #PWR018
U 1 1 60F45A53
P 5650 6600
F 0 "#PWR018" H 5650 6350 50  0001 C CNN
F 1 "GND" H 5655 6427 50  0000 C CNN
F 2 "" H 5650 6600 50  0001 C CNN
F 3 "" H 5650 6600 50  0001 C CNN
	1    5650 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6100 5650 6250
Connection ~ 5650 6250
Wire Wire Line
	2600 7100 2600 6350
Wire Wire Line
	2600 6350 2700 6350
Wire Wire Line
	6300 6250 6200 6250
Text Notes 4600 6000 0    50   ~ 0
500mA
Wire Wire Line
	5050 6250 5050 7100
Wire Wire Line
	2600 7100 5050 7100
$Comp
L power:+3V3 #PWR017
U 1 1 5F3D91E9
P 5650 6100
F 0 "#PWR017" H 5650 5950 50  0001 C CNN
F 1 "+3V3" H 5665 6273 50  0000 C CNN
F 2 "" H 5650 6100 50  0001 C CNN
F 3 "" H 5650 6100 50  0001 C CNN
	1    5650 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F3C9A49
P 1500 3550
F 0 "#PWR09" H 1500 3300 50  0001 C CNN
F 1 "GND" H 1505 3377 50  0000 C CNN
F 2 "" H 1500 3550 50  0001 C CNN
F 3 "" H 1500 3550 50  0001 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 5F3C86F1
P 1500 3250
F 0 "#PWR08" H 1500 3100 50  0001 C CNN
F 1 "+3V3" H 1515 3423 50  0000 C CNN
F 2 "" H 1500 3250 50  0001 C CNN
F 3 "" H 1500 3250 50  0001 C CNN
	1    1500 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F3C7398
P 1500 3400
F 0 "C3" H 1615 3446 50  0000 L CNN
F 1 "0.1uF" H 1615 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 3250 50  0001 C CNN
F 3 "~" H 1500 3400 50  0001 C CNN
	1    1500 3400
	1    0    0    -1  
$EndComp
Connection ~ 1200 4100
Wire Wire Line
	1200 3800 1200 4100
Connection ~ 1200 4400
Wire Wire Line
	1200 4400 1200 4600
Wire Wire Line
	1200 4350 1200 4400
Wire Wire Line
	1350 4350 1200 4350
Wire Wire Line
	1200 4150 1200 4100
Wire Wire Line
	1350 4150 1200 4150
Wire Wire Line
	1200 4600 1100 4600
Text GLabel 1100 4600 0    50   UnSpc ~ 0
SenseB-
Text Notes 2300 3650 0    50   ~ 0
I2C address: 0x40\n
Wire Wire Line
	1600 3800 1200 3800
Wire Wire Line
	2000 3250 2000 3600
$Comp
L power:+3V3 #PWR010
U 1 1 5F3BF9CC
P 2000 3250
F 0 "#PWR010" H 2000 3100 50  0001 C CNN
F 1 "+3V3" H 2015 3423 50  0000 C CNN
F 2 "" H 2000 3250 50  0001 C CNN
F 3 "" H 2000 3250 50  0001 C CNN
	1    2000 3250
	1    0    0    -1  
$EndComp
Text GLabel 2400 4200 2    50   Input ~ 0
SCL
Text GLabel 2400 4100 2    50   BiDi ~ 0
SDA
Wire Wire Line
	2000 4800 2000 4600
$Comp
L power:GND #PWR011
U 1 1 5F3BF8D6
P 2000 4800
F 0 "#PWR011" H 2000 4550 50  0001 C CNN
F 1 "GND" H 2005 4627 50  0000 C CNN
F 2 "" H 2000 4800 50  0001 C CNN
F 3 "" H 2000 4800 50  0001 C CNN
	1    2000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4300 1350 4350
Wire Wire Line
	1600 4300 1350 4300
Wire Wire Line
	1350 4200 1350 4150
Wire Wire Line
	1600 4200 1350 4200
$Comp
L Device:R R1
U 1 1 5F3BF314
P 1200 4250
F 0 "R1" H 1112 4296 50  0000 R CNN
F 1 "5mΩ" H 1112 4205 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1130 4250 50  0001 C CNN
F 3 "~" H 1200 4250 50  0001 C CNN
	1    1200 4250
	1    0    0    -1  
$EndComp
Text Notes 2300 3500 0    50   ~ 0
INA220\n
$Comp
L Compressor-Speed-Controller-rescue:INA226-Analog_ADC U2
U 1 1 5F3BF087
P 2000 4100
F 0 "U2" H 2000 4778 50  0000 C CNN
F 1 "INA226" H 2000 4687 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2050 4200 50  0001 C CNN
F 3 "${KIPRJMOD}/datasheets/ina220.pdf" H 2350 4000 50  0001 C CNN
	1    2000 4100
	1    0    0    -1  
$EndComp
Text Notes 9800 11050 0    50   ~ 0
Enclosure:\nhttp://www.hammondmfg.com/pdf/1551HFL.pdf
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 5FD2C6AC
P 6050 6250
F 0 "JP3" H 6050 6455 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 6050 6364 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 6050 6250 50  0001 C CNN
F 3 "~" H 6050 6250 50  0001 C CNN
	1    6050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6250 5650 6250
$Comp
L power:GND #PWR016
U 1 1 5FEBC7A0
P 4050 4800
F 0 "#PWR016" H 4050 4550 50  0001 C CNN
F 1 "GND" H 4055 4627 50  0000 C CNN
F 2 "" H 4050 4800 50  0001 C CNN
F 3 "" H 4050 4800 50  0001 C CNN
	1    4050 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR013
U 1 1 5FEBC7A6
P 4050 2950
F 0 "#PWR013" H 4050 2800 50  0001 C CNN
F 1 "+3V3" H 4065 3123 50  0000 C CNN
F 2 "" H 4050 2950 50  0001 C CNN
F 3 "" H 4050 2950 50  0001 C CNN
	1    4050 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 2950 4050 3300
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5FEBC7AD
P 4050 3500
F 0 "JP1" V 4096 3568 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 4005 3568 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 4050 3500 50  0001 C CNN
F 3 "~" H 4050 3500 50  0001 C CNN
	1    4050 3500
	0    1    -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 5FEBC7B3
P 4050 4450
F 0 "JP2" V 4096 4518 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 4005 4518 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 4050 4450 50  0001 C CNN
F 3 "~" H 4050 4450 50  0001 C CNN
	1    4050 4450
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 5FEBC7BB
P 4050 4150
F 0 "#PWR015" H 4050 4000 50  0001 C CNN
F 1 "+3V3" H 4065 4323 50  0000 C CNN
F 2 "" H 4050 4150 50  0001 C CNN
F 3 "" H 4050 4150 50  0001 C CNN
	1    4050 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 4800 4050 4650
Wire Wire Line
	4050 4250 4050 4150
$Comp
L power:GND #PWR014
U 1 1 5FEBC7C3
P 4050 3700
F 0 "#PWR014" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4055 3527 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 3450 3800
Wire Wire Line
	3450 3800 3450 3500
Wire Wire Line
	3450 3500 3900 3500
Wire Wire Line
	3450 4450 3450 3900
Wire Wire Line
	3450 3900 2400 3900
Wire Wire Line
	3450 4450 3900 4450
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60FD8CE8
P 1850 2300
F 0 "J2" H 1930 2292 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1930 2201 50  0000 L CNN
F 2 "digikey-footprints:Term_Block_1x2_P5.08MM" H 1850 2300 50  0001 C CNN
F 3 "~" H 1850 2300 50  0001 C CNN
	1    1850 2300
	-1   0    0    1   
$EndComp
Text GLabel 2300 2200 2    50   Input ~ 0
SenseB-
Text GLabel 2300 2300 2    50   Input ~ 0
SenseA-
Wire Wire Line
	2050 2200 2300 2200
Wire Wire Line
	2300 2300 2050 2300
$Comp
L Device:C C7
U 1 1 60FEC5AF
P 5550 1550
F 0 "C7" H 5665 1596 50  0000 L CNN
F 1 "0.1uF" H 5665 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5588 1400 50  0001 C CNN
F 3 "~" H 5550 1550 50  0001 C CNN
	1    5550 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60FEDB24
P 5100 1550
F 0 "C6" H 5215 1596 50  0000 L CNN
F 1 "10uF" H 5215 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5138 1400 50  0001 C CNN
F 3 "~" H 5100 1550 50  0001 C CNN
	1    5100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1250 7100 1400
$Comp
L power:+3V3 #PWR0101
U 1 1 60FF9A57
P 7100 1250
F 0 "#PWR0101" H 7100 1100 50  0001 C CNN
F 1 "+3V3" H 7115 1423 50  0000 C CNN
F 2 "" H 7100 1250 50  0001 C CNN
F 3 "" H 7100 1250 50  0001 C CNN
	1    7100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2150 9250 2150
Wire Wire Line
	9250 2150 9250 2250
Text GLabel 10150 2250 0    50   Input ~ 0
EN
Text GLabel 10650 2250 2    50   Input ~ 0
BOOT
Text GLabel 10650 2150 2    50   Input ~ 0
Rx
Text GLabel 10650 2050 2    50   Input ~ 0
Tx
Text GLabel 7100 1500 0    50   Input ~ 0
EN
Text GLabel 7100 2100 0    50   Input ~ 0
BOOT
Text GLabel 8600 2000 2    50   Input ~ 0
Tx
Text GLabel 8600 2100 2    50   Input ~ 0
Rx
Wire Wire Line
	5100 1250 5100 1400
$Comp
L power:+3V3 #PWR0102
U 1 1 6100D4B6
P 5100 1250
F 0 "#PWR0102" H 5100 1100 50  0001 C CNN
F 1 "+3V3" H 5115 1423 50  0000 C CNN
F 2 "" H 5100 1250 50  0001 C CNN
F 3 "" H 5100 1250 50  0001 C CNN
	1    5100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1400 5550 1400
Connection ~ 5100 1400
$Comp
L power:GND #PWR0103
U 1 1 6101AC8B
P 5100 1800
F 0 "#PWR0103" H 5100 1550 50  0001 C CNN
F 1 "GND" H 5105 1627 50  0000 C CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "" H 5100 1800 50  0001 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1700 5100 1800
$Comp
L power:GND #PWR0104
U 1 1 6102102F
P 5550 1800
F 0 "#PWR0104" H 5550 1550 50  0001 C CNN
F 1 "GND" H 5555 1627 50  0000 C CNN
F 2 "" H 5550 1800 50  0001 C CNN
F 3 "" H 5550 1800 50  0001 C CNN
	1    5550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1700 5550 1800
$Comp
L power:GND #PWR0105
U 1 1 610228A1
P 6300 7200
F 0 "#PWR0105" H 6300 6950 50  0001 C CNN
F 1 "GND" H 6305 7027 50  0000 C CNN
F 2 "" H 6300 7200 50  0001 C CNN
F 3 "" H 6300 7200 50  0001 C CNN
	1    6300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7000 6300 7200
Text GLabel 8600 1500 2    50   BiDi ~ 0
SDA
Text GLabel 8600 1400 2    50   BiDi ~ 0
SCL
$Comp
L power:+3V3 #PWR0106
U 1 1 61059085
P 10150 2050
F 0 "#PWR0106" H 10150 1900 50  0001 C CNN
F 1 "+3V3" H 10165 2223 50  0000 C CNN
F 2 "" H 10150 2050 50  0001 C CNN
F 3 "" H 10150 2050 50  0001 C CNN
	1    10150 2050
	1    0    0    -1  
$EndComp
NoConn ~ 8600 1200
$Comp
L power:+VDC #PWR05
U 1 1 610B3F1D
P 1200 3800
F 0 "#PWR05" H 1200 3700 50  0001 C CNN
F 1 "+VDC" H 1200 4075 50  0000 C CNN
F 2 "" H 1200 3800 50  0001 C CNN
F 3 "" H 1200 3800 50  0001 C CNN
	1    1200 3800
	1    0    0    -1  
$EndComp
Connection ~ 1200 3800
$Comp
L power:GND #PWR022
U 1 1 610C8371
P 7100 3550
F 0 "#PWR022" H 7100 3300 50  0001 C CNN
F 1 "GND" H 7105 3377 50  0000 C CNN
F 2 "" H 7100 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0001 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 610C8377
P 7100 3250
F 0 "#PWR021" H 7100 3100 50  0001 C CNN
F 1 "+3V3" H 7115 3423 50  0000 C CNN
F 2 "" H 7100 3250 50  0001 C CNN
F 3 "" H 7100 3250 50  0001 C CNN
	1    7100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 610C837D
P 7100 3400
F 0 "C8" H 7215 3446 50  0000 L CNN
F 1 "0.1uF" H 7215 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7138 3250 50  0001 C CNN
F 3 "~" H 7100 3400 50  0001 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
Connection ~ 6800 4100
Wire Wire Line
	6800 3800 6800 4100
Connection ~ 6800 4400
Wire Wire Line
	6800 4400 6800 4600
Wire Wire Line
	6800 4350 6800 4400
Wire Wire Line
	6950 4350 6800 4350
Wire Wire Line
	6800 4150 6800 4100
Wire Wire Line
	6950 4150 6800 4150
Wire Wire Line
	6800 4600 6700 4600
Text GLabel 6700 4600 0    50   UnSpc ~ 0
SenseA-
Text Notes 7900 3650 0    50   ~ 0
I2C address: 0x40\n
Wire Wire Line
	7200 3800 6800 3800
Wire Wire Line
	7600 3250 7600 3600
$Comp
L power:+3V3 #PWR023
U 1 1 610C8390
P 7600 3250
F 0 "#PWR023" H 7600 3100 50  0001 C CNN
F 1 "+3V3" H 7615 3423 50  0000 C CNN
F 2 "" H 7600 3250 50  0001 C CNN
F 3 "" H 7600 3250 50  0001 C CNN
	1    7600 3250
	1    0    0    -1  
$EndComp
Text GLabel 8000 4200 2    50   Input ~ 0
SCL
Text GLabel 8000 4100 2    50   BiDi ~ 0
SDA
Wire Wire Line
	7600 4800 7600 4600
$Comp
L power:GND #PWR024
U 1 1 610C839A
P 7600 4800
F 0 "#PWR024" H 7600 4550 50  0001 C CNN
F 1 "GND" H 7605 4627 50  0000 C CNN
F 2 "" H 7600 4800 50  0001 C CNN
F 3 "" H 7600 4800 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4300 6950 4350
Wire Wire Line
	7200 4300 6950 4300
Wire Wire Line
	6950 4200 6950 4150
Wire Wire Line
	7200 4200 6950 4200
$Comp
L Device:R R3
U 1 1 610C83A4
P 6800 4250
F 0 "R3" H 6712 4296 50  0000 R CNN
F 1 "5mΩ" H 6712 4205 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 4250 50  0001 C CNN
F 3 "~" H 6800 4250 50  0001 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
Text Notes 7900 3500 0    50   ~ 0
INA220\n
$Comp
L Compressor-Speed-Controller-rescue:INA226-Analog_ADC U4
U 1 1 610C83AB
P 7600 4100
F 0 "U4" H 7600 4778 50  0000 C CNN
F 1 "INA226" H 7600 4687 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 7650 4200 50  0001 C CNN
F 3 "${KIPRJMOD}/datasheets/ina220.pdf" H 7950 4000 50  0001 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 610C83B1
P 9650 4800
F 0 "#PWR028" H 9650 4550 50  0001 C CNN
F 1 "GND" H 9655 4627 50  0000 C CNN
F 2 "" H 9650 4800 50  0001 C CNN
F 3 "" H 9650 4800 50  0001 C CNN
	1    9650 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR025
U 1 1 610C83B7
P 9650 2950
F 0 "#PWR025" H 9650 2800 50  0001 C CNN
F 1 "+3V3" H 9665 3123 50  0000 C CNN
F 2 "" H 9650 2950 50  0001 C CNN
F 3 "" H 9650 2950 50  0001 C CNN
	1    9650 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 2950 9650 3300
$Comp
L Jumper:SolderJumper_3_Bridged12 JP4
U 1 1 610C83BE
P 9650 3500
F 0 "JP4" V 9696 3568 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 9605 3568 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 9650 3500 50  0001 C CNN
F 3 "~" H 9650 3500 50  0001 C CNN
	1    9650 3500
	0    1    -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Bridged12 JP5
U 1 1 610C83C4
P 9650 4450
F 0 "JP5" V 9696 4518 50  0000 L CNN
F 1 "SolderJumper_3_Bridged12" V 9605 4518 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 9650 4450 50  0001 C CNN
F 3 "~" H 9650 4450 50  0001 C CNN
	1    9650 4450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR027
U 1 1 610C83CA
P 9650 4150
F 0 "#PWR027" H 9650 4000 50  0001 C CNN
F 1 "+3V3" H 9665 4323 50  0000 C CNN
F 2 "" H 9650 4150 50  0001 C CNN
F 3 "" H 9650 4150 50  0001 C CNN
	1    9650 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 4800 9650 4650
Wire Wire Line
	9650 4250 9650 4150
$Comp
L power:GND #PWR026
U 1 1 610C83D2
P 9650 3700
F 0 "#PWR026" H 9650 3450 50  0001 C CNN
F 1 "GND" H 9655 3527 50  0000 C CNN
F 2 "" H 9650 3700 50  0001 C CNN
F 3 "" H 9650 3700 50  0001 C CNN
	1    9650 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 3800 9050 3800
Wire Wire Line
	9050 3800 9050 3500
Wire Wire Line
	9050 3500 9500 3500
Wire Wire Line
	9050 4450 9050 3900
Wire Wire Line
	9050 3900 8000 3900
$Comp
L power:+VDC #PWR020
U 1 1 610C83DE
P 6800 3800
F 0 "#PWR020" H 6800 3700 50  0001 C CNN
F 1 "+VDC" H 6800 4075 50  0000 C CNN
F 2 "" H 6800 3800 50  0001 C CNN
F 3 "" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
Connection ~ 6800 3800
Wire Wire Line
	9050 4450 9500 4450
$Comp
L Device:R R4
U 1 1 611075EF
P 8200 5700
F 0 "R4" H 8270 5746 50  0000 L CNN
F 1 "10k" H 8270 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8130 5700 50  0001 C CNN
F 3 "~" H 8200 5700 50  0001 C CNN
	1    8200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61109BA3
P 8750 5700
F 0 "R5" H 8820 5746 50  0000 L CNN
F 1 "10k" H 8820 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8680 5700 50  0001 C CNN
F 3 "~" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR029
U 1 1 61111C44
P 8200 5550
F 0 "#PWR029" H 8200 5400 50  0001 C CNN
F 1 "+3V3" H 8215 5723 50  0000 C CNN
F 2 "" H 8200 5550 50  0001 C CNN
F 3 "" H 8200 5550 50  0001 C CNN
	1    8200 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR031
U 1 1 61115242
P 8750 5550
F 0 "#PWR031" H 8750 5400 50  0001 C CNN
F 1 "+3V3" H 8765 5723 50  0000 C CNN
F 2 "" H 8750 5550 50  0001 C CNN
F 3 "" H 8750 5550 50  0001 C CNN
	1    8750 5550
	-1   0    0    -1  
$EndComp
NoConn ~ 2400 4400
NoConn ~ 8000 4400
Text GLabel 8200 5850 2    50   Input ~ 0
SCL
Text GLabel 8750 5850 2    50   BiDi ~ 0
SDA
$Comp
L Device:R R6
U 1 1 6114AAFC
P 7750 5700
F 0 "R6" H 7820 5746 50  0000 L CNN
F 1 "10k" H 7820 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 5700 50  0001 C CNN
F 3 "~" H 7750 5700 50  0001 C CNN
	1    7750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 6114AB02
P 7750 5550
F 0 "#PWR030" H 7750 5400 50  0001 C CNN
F 1 "+3V3" H 7765 5723 50  0000 C CNN
F 2 "" H 7750 5550 50  0001 C CNN
F 3 "" H 7750 5550 50  0001 C CNN
	1    7750 5550
	-1   0    0    -1  
$EndComp
Text GLabel 7750 5850 0    50   Input ~ 0
EN
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J3
U 1 1 6117304C
P 10350 2150
F 0 "J3" H 10400 2467 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 10400 2376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10350 2150 50  0001 C CNN
F 3 "~" H 10350 2150 50  0001 C CNN
	1    10350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5C1BB31D
P 9250 2250
F 0 "#PWR019" H 9250 2000 50  0001 C CNN
F 1 "GND" H 9255 2077 50  0000 C CNN
F 2 "" H 9250 2250 50  0001 C CNN
F 3 "" H 9250 2250 50  0001 C CNN
	1    9250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 611B1B5C
P 7100 2200
F 0 "#PWR033" H 7100 1950 50  0001 C CNN
F 1 "GND" H 7105 2027 50  0000 C CNN
F 2 "" H 7100 2200 50  0001 C CNN
F 3 "" H 7100 2200 50  0001 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60E3BDCF
P 3700 1250
F 0 "SW1" H 3700 1535 50  0000 C CNN
F 1 "SW_Push" H 3700 1444 50  0000 C CNN
F 2 "CurrentESP:SW_TACTILE_PO21301" H 3700 1450 50  0001 C CNN
F 3 "~" H 3700 1450 50  0001 C CNN
	1    3700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 60E3E9C6
P 3900 1300
F 0 "#PWR032" H 3900 1050 50  0001 C CNN
F 1 "GND" H 3905 1127 50  0000 C CNN
F 2 "" H 3900 1300 50  0001 C CNN
F 3 "" H 3900 1300 50  0001 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
Text GLabel 3450 1250 0    50   Input ~ 0
EN
Wire Wire Line
	3450 1250 3500 1250
Wire Wire Line
	3900 1250 3900 1300
$EndSCHEMATC
