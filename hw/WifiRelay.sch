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
LIBS:relays
LIBS:switches
LIBS:leds
LIBS:ESP8266
LIBS:WifiRelay
LIBS:WifiRelay-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "WiFi Relay Controller"
Date "2017-06-17"
Rev "A"
Comp "Jeff Davis N0DY"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X06 J2
U 1 1 58F16837
P 1050 4400
F 0 "J2" H 1050 4750 50  0000 C CNN
F 1 "CONN_01X06" H 1050 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1050 4400 50  0001 C CNN
F 3 "" H 1050 4400 50  0001 C CNN
F 4 "None" H 1050 4400 60  0001 C CNN "MPN"
F 5 "None" H 1050 4400 60  0001 C CNN "DPN"
	1    1050 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 58F1B051
P 7100 2400
F 0 "#PWR?" H 7100 2150 50  0001 C CNN
F 1 "GND" H 7100 2250 50  0000 C CNN
F 2 "" H 7100 2400 50  0001 C CNN
F 3 "" H 7100 2400 50  0001 C CNN
	1    7100 2400
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58F1B33E
P 7500 1300
F 0 "#PWR?" H 7500 1150 50  0001 C CNN
F 1 "+5V" H 7500 1440 50  0000 C CNN
F 2 "" H 7500 1300 50  0001 C CNN
F 3 "" H 7500 1300 50  0001 C CNN
	1    7500 1300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58F1C3F0
P 6500 4400
F 0 "#PWR?" H 6500 4150 50  0001 C CNN
F 1 "GND" H 6500 4250 50  0000 C CNN
F 2 "" H 6500 4400 50  0001 C CNN
F 3 "" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58F1C422
P 5750 3700
F 0 "#PWR?" H 5750 3550 50  0001 C CNN
F 1 "+5V" H 5750 3840 50  0000 C CNN
F 2 "" H 5750 3700 50  0001 C CNN
F 3 "" H 5750 3700 50  0001 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 58F1C454
P 4150 3750
F 0 "#PWR?" H 4150 3600 50  0001 C CNN
F 1 "+3.3V" H 4150 3890 50  0000 C CNN
F 2 "" H 4150 3750 50  0001 C CNN
F 3 "" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    -1  
$EndComp
Text Label 3600 4200 0    60   ~ 0
~RELAY1
$Comp
L +5V #PWR?
U 1 1 58F1C6B8
P 6800 3150
F 0 "#PWR?" H 6800 3000 50  0001 C CNN
F 1 "+5V" H 6800 3290 50  0000 C CNN
F 2 "" H 6800 3150 50  0001 C CNN
F 3 "" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J3
U 1 1 58F1C850
P 8950 3450
F 0 "J3" H 8950 3600 50  0000 C CNN
F 1 "CONN_01X02" H 8950 3300 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
F 4 "OSTYC022150" H 8950 3450 60  0001 C CNN "MPN"
F 5 "ED2902-ND" H 8950 3450 60  0001 C CNN "DPN"
	1    8950 3450
	1    0    0    -1  
$EndComp
$Comp
L 1N4148 D2
U 1 1 58F1CFF3
P 7050 5400
F 0 "D2" H 7050 5500 50  0000 C CNN
F 1 "1N4148" H 7050 5300 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 7050 5225 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7050 5400 50  0001 C CNN
F 4 "1N4148W-7-F" H 7050 5400 60  0001 C CNN "MPN"
F 5 "1N4148W-FDICT-ND" H 7050 5400 60  0001 C CNN "DPN"
F 6 "Value" H 7050 5400 60  0001 C CNN "Mouser"
	1    7050 5400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58F1D011
P 6550 6200
F 0 "#PWR?" H 6550 5950 50  0001 C CNN
F 1 "GND" H 6550 6050 50  0000 C CNN
F 2 "" H 6550 6200 50  0001 C CNN
F 3 "" H 6550 6200 50  0001 C CNN
	1    6550 6200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58F1D017
P 5800 5500
F 0 "#PWR?" H 5800 5350 50  0001 C CNN
F 1 "+5V" H 5800 5640 50  0000 C CNN
F 2 "" H 5800 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0001 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 58F1D01D
P 4200 5550
F 0 "#PWR?" H 4200 5400 50  0001 C CNN
F 1 "+3.3V" H 4200 5690 50  0000 C CNN
F 2 "" H 4200 5550 50  0001 C CNN
F 3 "" H 4200 5550 50  0001 C CNN
	1    4200 5550
	1    0    0    -1  
$EndComp
Text Label 3650 6000 0    60   ~ 0
~RELAY2
$Comp
L +5V #PWR?
U 1 1 58F1D033
P 6800 5100
F 0 "#PWR?" H 6800 4950 50  0001 C CNN
F 1 "+5V" H 6800 5240 50  0000 C CNN
F 2 "" H 6800 5100 50  0001 C CNN
F 3 "" H 6800 5100 50  0001 C CNN
	1    6800 5100
	1    0    0    -1  
$EndComp
Text Notes 650  4500 0    60   ~ 0
3V3
Text Notes 650  4600 0    60   ~ 0
RTS
Text Notes 650  4300 0    60   ~ 0
FTDI_RX
Text Notes 650  4400 0    60   ~ 0
FTDI_TX
Text Notes 650  4200 0    60   ~ 0
DTR
Text Notes 650  4700 0    60   ~ 0
GND
$Comp
L +3.3V #PWR?
U 1 1 58F1FD08
P 3100 950
F 0 "#PWR?" H 3100 800 50  0001 C CNN
F 1 "+3.3V" H 3100 1090 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58F1FE11
P 3100 3000
F 0 "#PWR?" H 3100 2750 50  0001 C CNN
F 1 "GND" H 3100 2850 50  0000 C CNN
F 2 "" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 3000
	1    0    0    -1  
$EndComp
NoConn ~ 2200 1850
NoConn ~ 4000 2250
Text Label 1250 4350 0    60   ~ 0
RXD
Text Label 4000 1850 0    60   ~ 0
RXD
Text Label 4000 1750 0    60   ~ 0
TXD
Text Label 1250 4250 0    60   ~ 0
TXD
$Comp
L GND #PWR?
U 1 1 58F200D6
P 1250 4750
F 0 "#PWR?" H 1250 4500 50  0001 C CNN
F 1 "GND" H 1250 4600 50  0000 C CNN
F 2 "" H 1250 4750 50  0001 C CNN
F 3 "" H 1250 4750 50  0001 C CNN
	1    1250 4750
	1    0    0    -1  
$EndComp
Text Label 1250 4150 0    60   ~ 0
GPIO0
Text Label 4650 2150 0    60   ~ 0
GPIO0
$Comp
L GND #PWR?
U 1 1 58F204E2
P 4050 3000
F 0 "#PWR?" H 4050 2750 50  0001 C CNN
F 1 "GND" H 4050 2850 50  0000 C CNN
F 2 "" H 4050 3000 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58F205C1
P 3450 1050
F 0 "C3" V 3300 1000 50  0000 L CNN
F 1 "100nF" V 3600 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3488 900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/212/KEM_C1002_X7R_SMD-357932.pdf" H 3450 1050 50  0001 C CNN
F 4 "C0805C104K8RACTU" H 3450 1050 60  0001 C CNN "MPN"
F 5 "399-7999-1-ND" H 3450 1050 60  0001 C CNN "DPN"
F 6 "80-C0805C104K8R" H 3450 1050 60  0001 C CNN "Mouser"
	1    3450 1050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58F2094B
P 3800 1150
F 0 "#PWR?" H 3800 900 50  0001 C CNN
F 1 "GND" H 3800 1000 50  0000 C CNN
F 2 "" H 3800 1150 50  0001 C CNN
F 3 "" H 3800 1150 50  0001 C CNN
	1    3800 1150
	1    0    0    -1  
$EndComp
NoConn ~ 2200 2050
NoConn ~ 2200 2150
NoConn ~ 2200 2250
NoConn ~ 2200 2350
$Comp
L +3.3V #PWR?
U 1 1 58F21160
P 1700 1000
F 0 "#PWR?" H 1700 850 50  0001 C CNN
F 1 "+3.3V" H 1700 1140 50  0000 C CNN
F 2 "" H 1700 1000 50  0001 C CNN
F 3 "" H 1700 1000 50  0001 C CNN
	1    1700 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 58F2144D
P 4500 1350
F 0 "#PWR?" H 4500 1200 50  0001 C CNN
F 1 "+3.3V" H 4500 1490 50  0000 C CNN
F 2 "" H 4500 1350 50  0001 C CNN
F 3 "" H 4500 1350 50  0001 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
Text Label 4000 1950 0    60   ~ 0
~RELAY1
Text Label 4000 2050 0    60   ~ 0
~RELAY2
$Comp
L PWR_FLAG #FLG?
U 1 1 58F21C14
P 6250 1600
F 0 "#FLG?" H 6250 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 1750 50  0000 C CNN
F 2 "" H 6250 1600 50  0001 C CNN
F 3 "" H 6250 1600 50  0001 C CNN
	1    6250 1600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 58F21EA7
P 6150 1950
F 0 "#FLG?" H 6150 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 2100 50  0000 C CNN
F 2 "" H 6150 1950 50  0001 C CNN
F 3 "" H 6150 1950 50  0001 C CNN
	1    6150 1950
	-1   0    0    1   
$EndComp
Text Label 1250 4550 0    60   ~ 0
RESET
Text Label 1150 1750 2    60   ~ 0
RESET
$Comp
L R R7
U 1 1 58F29CF3
P 4400 3900
F 0 "R7" V 4480 3900 50  0000 C CNN
F 1 "1K" V 4400 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4330 3900 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7F1773204%7FG%7Fpdf%7FEnglish%7FENG_DS_1773204_G.pdf%7F1676480-453" H 4400 3900 50  0001 C CNN
F 4 "CRG0805F1K0" V 4400 3900 60  0001 C CNN "MPN"
F 5 "A106056CT-ND" V 4400 3900 60  0001 C CNN "DPN"
F 6 "Value" H 4400 3900 60  0001 C CNN "Mouser"
	1    4400 3900
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 58F29D8A
P 5900 4100
F 0 "R9" V 5980 4100 50  0000 C CNN
F 1 "1K" V 5900 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5830 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0001 C CNN
F 4 "CRG0805F1K0" V 5900 4100 60  0001 C CNN "MPN"
F 5 "A106056CT-ND" V 5900 4100 60  0001 C CNN "DPN"
	1    5900 4100
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 58F29E18
P 5950 5900
F 0 "R10" V 6030 5900 50  0000 C CNN
F 1 "1K" V 5950 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5880 5900 50  0001 C CNN
F 3 "" H 5950 5900 50  0001 C CNN
F 4 "CRG0805F1K0" V 5950 5900 60  0001 C CNN "MPN"
F 5 "A106056CT-ND" V 5950 5900 60  0001 C CNN "DPN"
	1    5950 5900
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58F2A584
P 2000 1450
F 0 "R1" V 2080 1450 50  0000 C CNN
F 1 "10K" V 2000 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 1450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 2000 1450 50  0001 C CNN
F 4 "CRG0805F10K" V 2000 1450 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 2000 1450 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 2000 1450 60  0001 C CNN "Mouser"
	1    2000 1450
	1    0    0    -1  
$EndComp
$Comp
L MMSS8050-H Q2
U 1 1 58F2A851
P 6450 5900
F 0 "Q2" H 6650 5975 50  0000 L CNN
F 1 "MMSS8050-H" H 6650 5900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6650 5825 50  0001 L CIN
F 3 "" H 6450 5900 50  0001 L CNN
F 4 "MMSS8050-H-TP" H 6450 5900 60  0001 C CNN "MPN"
F 5 "MMSS8050-H-TPMSCT-ND" H 6450 5900 60  0001 C CNN "DPN"
	1    6450 5900
	1    0    0    -1  
$EndComp
$Comp
L MMSS8050-H Q1
U 1 1 58F2B026
P 6400 4100
F 0 "Q1" H 6600 4175 50  0000 L CNN
F 1 "MMSS8050-H" H 6600 4100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6600 4025 50  0001 L CIN
F 3 "" H 6400 4100 50  0001 L CNN
F 4 "MMSS8050-H-TP" H 6400 4100 60  0001 C CNN "MPN"
F 5 "MMSS8050-H-TPMSCT-ND" H 6400 4100 60  0001 C CNN "DPN"
	1    6400 4100
	1    0    0    -1  
$EndComp
$Comp
L 1N4148 D1
U 1 1 58F2CA9A
P 7000 3450
F 0 "D1" H 7000 3550 50  0000 C CNN
F 1 "1N4148" H 7000 3350 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 7000 3275 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7000 3450 50  0001 C CNN
F 4 "1N4148W-7-F" H 7000 3450 60  0001 C CNN "MPN"
F 5 "1N4148W-FDICT-ND" H 7000 3450 60  0001 C CNN "DPN"
F 6 "Value" H 7000 3450 60  0001 C CNN "Mouser"
	1    7000 3450
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 58F2CEE8
P 8950 5400
F 0 "J4" H 8950 5550 50  0000 C CNN
F 1 "CONN_01X02" H 8950 5250 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 8950 5400 50  0001 C CNN
F 3 "" H 8950 5400 50  0001 C CNN
F 4 "OSTYC022150" H 8950 5400 60  0001 C CNN "MPN"
F 5 "ED2902-ND" H 8950 5400 60  0001 C CNN "DPN"
	1    8950 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 58F2D073
P 5750 1750
F 0 "J1" H 5750 1900 50  0000 C CNN
F 1 "CONN_01X02" H 5750 1600 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 5750 1750 50  0001 C CNN
F 3 "" H 5750 1750 50  0001 C CNN
F 4 "OSTYC022150" H 5750 1750 60  0001 C CNN "MPN"
F 5 "ED2902-ND" H 5750 1750 60  0001 C CNN "DPN"
	1    5750 1750
	-1   0    0    1   
$EndComp
$Comp
L IRM-02-5 U1
U 1 1 58F43C7E
P 6300 1800
F 0 "U1" H 6700 2050 50  0000 C CNN
F 1 "HLK-PM01" H 6700 1650 50  0000 C CNN
F 2 "WifiRelay:HLK-PM01" H 6700 1550 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 6700 1450 50  0001 C CNN
F 4 "IRM-02-05" H 6300 1800 60  0001 C CNN "MPN"
F 5 "Value" H 6300 1800 60  0001 C CNN "DPN"
F 6 "709-IRM02-5" H 6300 1800 60  0001 C CNN "Mouser"
	1    6300 1800
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U2
U 1 1 58F4403E
P 8100 1700
F 0 "U2" H 8200 1450 50  0000 C CNN
F 1 "LM1117-3.3" H 8100 1950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 8100 1700 50  0001 C CNN
F 3 "" H 8100 1700 50  0001 C CNN
F 4 "LM1117MPX-3.3/NOPBCT-ND" H 8100 1700 60  0001 C CNN "MPN"
F 5 "LM1117MPX-3.3/NOPB" H 8100 1700 60  0001 C CNN "DPN"
F 6 "Value" H 8100 1700 60  0001 C CNN "Mouser"
	1    8100 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 58F44EEA
P 7500 2050
F 0 "C1" H 7525 2150 50  0000 L CNN
F 1 "10 uF" H 7525 1950 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 7538 1900 50  0001 C CNN
F 3 "http://www.vishay.com/docs/40002/293d.pdf" H 7500 2050 50  0001 C CNN
F 4 "293D106X0010A2TE3" H 7500 2050 60  0001 C CNN "MPN"
F 5 "718-1118-1-ND" H 7500 2050 60  0001 C CNN "DPN"
	1    7500 2050
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 58F4530F
P 8650 2050
F 0 "C2" H 8675 2150 50  0000 L CNN
F 1 "100 uF" H 8675 1950 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Reflow" H 8688 1900 50  0001 C CNN
F 3 "http://www.vishay.com/docs/40156/tl8.pdf" H 8650 2050 50  0001 C CNN
F 4 "TL8A0107M010C" H 8650 2050 60  0001 C CNN "MPN"
F 5 "718-1921-1-ND" H 8650 2050 60  0001 C CNN "DPN"
	1    8650 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58F56212
P 1700 1450
F 0 "R2" V 1780 1450 50  0000 C CNN
F 1 "10K" V 1700 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1630 1450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 1700 1450 50  0001 C CNN
F 4 "CRG0805F10K" V 1700 1450 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 1700 1450 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 1700 1450 60  0001 C CNN "Mouser"
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58F56289
P 4500 1650
F 0 "R4" V 4580 1650 50  0000 C CNN
F 1 "10K" V 4500 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 1650 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 4500 1650 50  0001 C CNN
F 4 "CRG0805F10K" V 4500 1650 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 4500 1650 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 4500 1650 60  0001 C CNN "Mouser"
	1    4500 1650
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58F56397
P 4150 4050
F 0 "R5" V 4230 4050 50  0000 C CNN
F 1 "10K" V 4150 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4080 4050 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 4150 4050 50  0001 C CNN
F 4 "CRG0805F10K" V 4150 4050 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 4150 4050 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 4150 4050 60  0001 C CNN "Mouser"
	1    4150 4050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58F56412
P 4200 5850
F 0 "R6" V 4280 5850 50  0000 C CNN
F 1 "10K" V 4200 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4130 5850 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 4200 5850 50  0001 C CNN
F 4 "CRG0805F10K" V 4200 5850 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 4200 5850 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 4200 5850 60  0001 C CNN "Mouser"
	1    4200 5850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58F5649A
P 4050 2600
F 0 "R3" V 4130 2600 50  0000 C CNN
F 1 "10K" V 4050 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3980 2600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_1623097_BA-655653.pdf" H 4050 2600 50  0001 C CNN
F 4 "CRG0805F10K" V 4050 2600 60  0001 C CNN "MPN"
F 5 "A106054CT-ND" V 4050 2600 60  0001 C CNN "DPN"
F 6 "279-CRG0805F10K/10" H 4050 2600 60  0001 C CNN "Mouser"
	1    4050 2600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 58F57101
P 4450 5700
F 0 "R8" V 4530 5700 50  0000 C CNN
F 1 "1K" V 4450 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4380 5700 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7F1773204%7FG%7Fpdf%7FEnglish%7FENG_DS_1773204_G.pdf%7F1676480-453" H 4450 5700 50  0001 C CNN
F 4 "CRG0805F1K0" V 4450 5700 60  0001 C CNN "MPN"
F 5 "A106056CT-ND" V 4450 5700 60  0001 C CNN "DPN"
F 6 "Value" H 4450 5700 60  0001 C CNN "Mouser"
	1    4450 5700
	0    1    1    0   
$EndComp
Text Notes 6750 1000 0    60   ~ 0
120vac to 5v and 3.3v conversion
Text Notes 750  3850 0    60   ~ 0
Programming\nHeader
$Comp
L SW_Push SW2
U 1 1 58FAACA8
P 4500 2800
F 0 "SW2" V 4500 2950 50  0000 L CNN
F 1 "SW_Push" H 4500 2740 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 4500 3000 50  0001 C CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-b3u.pdf" H 4500 3000 50  0001 C CNN
F 4 "B3U-1000P" H 4500 2800 60  0001 C CNN "MPN"
F 5 "SW1020CT-ND" H 4500 2800 60  0001 C CNN "DPN"
F 6 "Value" H 4500 2800 60  0001 C CNN "Mouser"
	1    4500 2800
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 58FAADCB
P 1700 2550
F 0 "SW1" V 1750 2650 50  0000 L CNN
F 1 "SW_Push" H 1700 2490 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 1700 2750 50  0001 C CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-b3u.pdf" H 1700 2750 50  0001 C CNN
F 4 "B3U-1000P" H 1700 2550 60  0001 C CNN "MPN"
F 5 "SW1020CT-ND" H 1700 2550 60  0001 C CNN "DPN"
F 6 "Value" H 1700 2550 60  0001 C CNN "Mouser"
	1    1700 2550
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 58FAAE34
P 1700 2100
F 0 "R11" V 1780 2100 50  0000 C CNN
F 1 "470" V 1700 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1630 2100 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204&DocType=DS&DocLang=English" H 1700 2100 50  0001 C CNN
F 4 "CRG0805F470R" H 1700 2100 60  0001 C CNN "MPN"
F 5 "A106063CT-ND" H 1700 2100 60  0001 C CNN "DPN"
F 6 "Value" H 1700 2100 60  0001 C CNN "Mouser"
	1    1700 2100
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 58FAB097
P 4500 2450
F 0 "R12" V 4580 2450 50  0000 C CNN
F 1 "470" V 4500 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 2450 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204&DocType=DS&DocLang=English" H 4500 2450 50  0001 C CNN
F 4 "CRG0805F470R" H 4500 2450 60  0001 C CNN "MPN"
F 5 "A106063CT-ND" H 4500 2450 60  0001 C CNN "DPN"
F 6 "Value" H 4500 2450 60  0001 C CNN "Mouser"
	1    4500 2450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 58FAB458
P 4500 3000
F 0 "#PWR?" H 4500 2750 50  0001 C CNN
F 1 "GND" H 4500 2850 50  0000 C CNN
F 2 "" H 4500 3000 50  0001 C CNN
F 3 "" H 4500 3000 50  0001 C CNN
	1    4500 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58FAB8F5
P 1700 3000
F 0 "#PWR?" H 1700 2750 50  0001 C CNN
F 1 "GND" H 1700 2850 50  0000 C CNN
F 2 "" H 1700 3000 50  0001 C CNN
F 3 "" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58FABA83
P 1400 2100
F 0 "C4" H 1200 2200 50  0000 L CNN
F 1 "100nF" H 1150 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1438 1950 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/212/KEM_C1002_X7R_SMD-357932.pdf" H 1400 2100 50  0001 C CNN
F 4 "C0805C104K8RACTU" H 1400 2100 60  0001 C CNN "MPN"
F 5 "399-7999-1-ND" H 1400 2100 60  0001 C CNN "DPN"
F 6 "80-C0805C104K8R" H 1400 2100 60  0001 C CNN "Mouser"
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L ESP-07v2 U3
U 1 1 5908EFFC
P 3100 2050
F 0 "U3" H 3100 2100 50  0000 C CNN
F 1 "ESP-07v2" H 3100 2000 50  0000 C CNN
F 2 "ESP8266:ESP-07v2" H 3100 2050 50  0001 C CNN
F 3 "" H 3100 2050 50  0001 C CNN
	1    3100 2050
	1    0    0    -1  
$EndComp
$Comp
L Songle-SRD-05VDC-SL-C K1
U 1 1 59287577
P 7600 3450
F 0 "K1" H 7500 3800 50  0000 L CNN
F 1 "Songle-SRD-05VDC-SL-C" H 7150 3100 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 7950 3500 50  0001 C CNN
F 3 "" H 8050 3600 50  0001 C CNN
F 4 "Value" H 7600 3450 60  0001 C CNN "Mouser"
F 5 "Value" H 7600 3450 60  0001 C CNN "DPN"
F 6 "Value" H 7600 3450 60  0001 C CNN "MPN"
	1    7600 3450
	1    0    0    -1  
$EndComp
$Comp
L Songle-SRD-05VDC-SL-C K2
U 1 1 5928804C
P 7600 5400
F 0 "K2" H 7500 5750 50  0000 L CNN
F 1 "Songle-SRD-05VDC-SL-C" H 7150 5050 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 7950 5450 50  0001 C CNN
F 3 "" H 8050 5550 50  0001 C CNN
F 4 "Value" H 7600 5400 60  0001 C CNN "Mouser"
F 5 "Value" H 7600 5400 60  0001 C CNN "DPN"
F 6 "Value" H 7600 5400 60  0001 C CNN "MPN"
	1    7600 5400
	1    0    0    -1  
$EndComp
NoConn ~ 7700 5100
NoConn ~ 7700 3150
$Comp
L +3.3V #PWR?
U 1 1 592AF6C2
P 1950 4650
F 0 "#PWR?" H 1950 4500 50  0001 C CNN
F 1 "+3.3V" H 1965 4823 50  0000 C CNN
F 2 "" H 1950 4650 50  0001 C CNN
F 3 "" H 1950 4650 50  0001 C CNN
	1    1950 4650
	-1   0    0    1   
$EndComp
$Comp
L PC827 U4
U 1 1 592B06D7
P 5300 4000
F 0 "U4" H 5300 4325 50  0000 C CNN
F 1 "PC827" H 5300 4234 50  0000 C CNN
F 2 "WifiRelay:SOIC-8" H 5100 3800 50  0001 L CIN
F 3 "" H 5300 4000 50  0001 L CNN
F 4 "Value" H 5300 4000 60  0001 C CNN "MPN"
F 5 "Value" H 5300 4000 60  0001 C CNN "DPN"
F 6 "Value" H 5300 4000 60  0001 C CNN "Mouser"
	1    5300 4000
	1    0    0    -1  
$EndComp
$Comp
L PC827 U4
U 2 1 592B07DE
P 5350 5800
F 0 "U4" H 5350 6125 50  0000 C CNN
F 1 "PC827" H 5350 6034 50  0000 C CNN
F 2 "WifiRelay:SOIC-8" H 5150 5600 50  0001 L CIN
F 3 "" H 5350 5800 50  0001 L CNN
	2    5350 5800
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J5
U 1 1 592B6F63
P 7500 1350
F 0 "J5" V 7600 1450 50  0000 L CNN
F 1 "TEST_1P" V 7450 1550 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 1350 50  0001 C CNN
F 3 "" H 7700 1350 50  0001 C CNN
	1    7500 1350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J6
U 1 1 59458A4A
P 7000 2200
F 0 "J6" V 7100 2300 50  0000 L CNN
F 1 "TEST_1P" V 6950 2400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7200 2200 50  0001 C CNN
F 3 "" H 7200 2200 50  0001 C CNN
	1    7000 2200
	0    -1   -1   0   
$EndComp
Text Label 2200 4450 0    60   ~ 0
3V3REG
Text Label 8900 1700 0    60   ~ 0
3V3REG
$Comp
L Jumper_Dual JP1
U 1 1 5945A06A
P 1950 4450
F 0 "JP1" H 1950 4689 50  0000 C CNN
F 1 "Jumper_Dual" H 1950 4598 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1950 4450 50  0001 C CNN
F 3 "" H 1950 4450 50  0001 C CNN
F 4 "Value" H 1950 4450 60  0001 C CNN "MPN"
F 5 "Value" H 1950 4450 60  0001 C CNN "DPN"
F 6 "Value" H 1950 4450 60  0001 C CNN "Mouser"
	1    1950 4450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5945A25A
P 1950 4650
F 0 "#FLG?" H 1950 4725 50  0001 C CNN
F 1 "PWR_FLAG" V 1950 4778 50  0000 L CNN
F 2 "" H 1950 4650 50  0001 C CNN
F 3 "" H 1950 4650 50  0001 C CNN
	1    1950 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1700 6300 1700
Wire Wire Line
	5950 1800 6300 1800
Wire Wire Line
	7100 1800 7100 2400
Connection ~ 7500 1700
Connection ~ 8650 1700
Wire Wire Line
	7100 1700 7800 1700
Wire Wire Line
	8400 1700 8900 1700
Wire Wire Line
	4150 3750 4150 3900
Wire Wire Line
	4150 3900 4250 3900
Wire Wire Line
	4550 3900 5000 3900
Wire Wire Line
	3600 4200 5000 4200
Connection ~ 4150 4200
Wire Wire Line
	5600 3900 5750 3900
Wire Wire Line
	5750 3900 5750 3700
Wire Wire Line
	5600 4100 5750 4100
Wire Wire Line
	6050 4100 6200 4100
Wire Wire Line
	6500 4300 6500 4400
Connection ~ 6500 3750
Wire Wire Line
	8450 3750 8450 3500
Wire Wire Line
	8450 3500 8750 3500
Wire Wire Line
	8450 3150 8450 3400
Wire Wire Line
	8450 3400 8750 3400
Wire Wire Line
	4200 5550 4200 5700
Wire Wire Line
	4200 5700 4300 5700
Wire Wire Line
	4600 5700 5050 5700
Wire Wire Line
	3650 6000 5050 6000
Connection ~ 4200 6000
Wire Wire Line
	5650 5700 5800 5700
Wire Wire Line
	5800 5700 5800 5500
Wire Wire Line
	5650 5900 5800 5900
Wire Wire Line
	6100 5900 6250 5900
Wire Wire Line
	6550 6100 6550 6200
Wire Wire Line
	6800 5100 7400 5100
Connection ~ 7050 5100
Wire Wire Line
	6550 5700 7400 5700
Connection ~ 7050 5700
Wire Wire Line
	8450 5100 8450 5350
Wire Wire Line
	8450 5350 8750 5350
Wire Wire Line
	8450 5700 8450 5450
Wire Wire Line
	8450 5450 8750 5450
Wire Wire Line
	3100 950  3100 1150
Wire Wire Line
	3100 2950 3100 3000
Wire Wire Line
	1250 4650 1250 4750
Wire Wire Line
	4000 2350 4050 2350
Wire Wire Line
	4050 2350 4050 2450
Wire Wire Line
	4050 3000 4050 2750
Wire Wire Line
	1700 1600 1700 1950
Wire Wire Line
	2000 1950 2200 1950
Wire Wire Line
	1700 1000 1700 1300
Wire Wire Line
	2000 1200 2000 1300
Wire Wire Line
	4000 2150 4650 2150
Wire Wire Line
	4500 1800 4500 2300
Wire Wire Line
	4500 1350 4500 1500
Connection ~ 1700 1750
Wire Wire Line
	6250 1600 6250 1700
Connection ~ 6250 1700
Wire Wire Line
	6150 1950 6150 1800
Connection ~ 6150 1800
Wire Wire Line
	1150 1750 2200 1750
Wire Wire Line
	7000 3150 7000 3300
Wire Wire Line
	7000 3600 7000 3750
Connection ~ 7000 3750
Wire Wire Line
	6500 3900 6500 3750
Connection ~ 7000 3150
Connection ~ 4500 2150
Wire Wire Line
	1700 2250 1700 2350
Wire Wire Line
	1700 2750 1700 3000
Wire Wire Line
	1400 1950 1400 1750
Wire Wire Line
	1400 2250 1400 2900
Wire Wire Line
	1400 2900 1700 2900
Connection ~ 1700 2900
Wire Wire Line
	2000 1200 1700 1200
Connection ~ 1700 1200
Wire Wire Line
	2000 1600 2000 1950
Wire Wire Line
	7050 5250 7050 5100
Wire Wire Line
	7050 5700 7050 5550
Wire Wire Line
	5000 4200 5000 4100
Wire Wire Line
	5050 6000 5050 5900
Wire Wire Line
	6800 3150 7400 3150
Wire Wire Line
	6500 3750 7400 3750
Wire Wire Line
	7800 3750 8450 3750
Wire Wire Line
	7900 3150 8450 3150
Wire Wire Line
	7900 5100 8450 5100
Wire Wire Line
	7800 5700 8450 5700
Connection ~ 4150 3900
Connection ~ 4200 5700
Connection ~ 7600 7700
Connection ~ 11350 350 
Wire Wire Line
	1250 4450 1700 4450
Wire Wire Line
	7500 1300 7500 1900
Connection ~ 7500 1350
Wire Wire Line
	7500 1350 7500 1350
Connection ~ 1400 1750
Wire Wire Line
	3100 1050 3300 1050
Connection ~ 3100 1050
Wire Wire Line
	3600 1050 3800 1050
Wire Wire Line
	3800 1050 3800 1150
Wire Wire Line
	8650 1700 8650 1900
Wire Wire Line
	7500 2200 7500 2350
Wire Wire Line
	7100 2350 8650 2350
Wire Wire Line
	8650 2350 8650 2200
Connection ~ 7500 2350
Connection ~ 7100 2350
Wire Wire Line
	8100 2000 8100 2350
Connection ~ 8100 2350
Wire Wire Line
	7100 2200 7000 2200
Connection ~ 7100 2200
Wire Wire Line
	1950 4650 1950 4550
$EndSCHEMATC
