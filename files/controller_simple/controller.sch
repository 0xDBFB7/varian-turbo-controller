EESchema Schematic File Version 4
LIBS:controller-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9350 1200 750  600 
U 5BA83293
F0 "Sheet5BA83292" 50
F1 "single_phase.sch" 50
F2 "PHASE_HI_IN" I L 9350 1300 50 
F3 "PHASE_L_IN" I L 9350 1400 50 
F4 "PHASE_OUT" I L 9350 1500 50 
F5 "CURRENT" I L 9350 1600 50 
$EndSheet
Text Label 9350 1300 2    50   ~ 0
PHASE_HIGH_IN_1
Text Label 9350 1400 2    50   ~ 0
PHASE_LOW_IN_1
Text Label 9350 1600 2    50   ~ 0
CURRENT_1
Text Label 5900 1950 0    50   ~ 0
PHASE_HIGH_IN_1
Text Label 5900 2050 0    50   ~ 0
PHASE_LOW_IN_1
$Comp
L power:GND #PWR0101
U 1 1 5C258BBD
P 6950 1750
F 0 "#PWR0101" H 6950 1750 30  0001 C CNN
F 1 "GND" H 6950 1680 30  0001 C CNN
F 2 "" H 6950 1750 50  0001 C CNN
F 3 "" H 6950 1750 50  0001 C CNN
	1    6950 1750
	0    1    1    0   
$EndComp
$Comp
L conn:CONN_1 P2
U 1 1 5C259B9A
P 7100 1750
F 0 "P2" H 7159 1750 40  0000 L CNN
F 1 "CONN_1" H 7050 1790 30  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 7100 1750 50  0001 C CNN
F 3 "" H 7100 1750 50  0001 C CNN
	1    7100 1750
	1    0    0    -1  
$EndComp
$Comp
L conn:CONN_1 P1
U 1 1 5C25A476
P 7100 1950
F 0 "P1" H 7159 1950 40  0000 L CNN
F 1 "CONN_1" H 7050 1990 30  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 7100 1950 50  0001 C CNN
F 3 "" H 7100 1950 50  0001 C CNN
	1    7100 1950
	1    0    0    -1  
$EndComp
$Comp
L power2:+48V #PWR0103
U 1 1 5C25A655
P 6950 1950
AR Path="/5C25A655" Ref="#PWR0103"  Part="1" 
AR Path="/5BA85AFE/5C25A655" Ref="#PWR?"  Part="1" 
AR Path="/5BA83293/5C25A655" Ref="#PWR?"  Part="1" 
AR Path="/5BA85AC4/5C25A655" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 6950 1800 50  0001 C CNN
F 1 "+48V" H 6965 2123 50  0000 C CNN
F 2 "" H 6950 1950 50  0001 C CNN
F 3 "" H 6950 1950 50  0001 C CNN
	1    6950 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5C259190
P 5900 2250
AR Path="/5C259190" Ref="#PWR0102"  Part="1" 
AR Path="/5BA83293/5C259190" Ref="#PWR?"  Part="1" 
AR Path="/5BA85AFE/5C259190" Ref="#PWR?"  Part="1" 
AR Path="/5BA85AC4/5C259190" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 5900 2200 20  0001 C CNN
F 1 "+12V" V 5900 2358 30  0000 L CNN
F 2 "" H 5900 2250 50  0001 C CNN
F 3 "" H 5900 2250 50  0001 C CNN
	1    5900 2250
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Connectors:CONN_04SMD_LONG J1
U 1 1 5C25AD1D
P 5800 2250
F 0 "J1" H 5756 2860 45  0000 C CNN
F 1 "CONN_04SMD_LONG" H 5756 2776 45  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.175mm_Drill0.8mm" H 5800 2750 20  0001 C CNN
F 3 "" H 5800 2250 50  0001 C CNN
F 4 "CONN-09140" H 5756 2681 60  0000 C CNN "Field4"
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C25ADFB
P 5900 2150
F 0 "#PWR0104" H 5900 2150 30  0001 C CNN
F 1 "GND" H 5900 2080 30  0001 C CNN
F 2 "" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	0    -1   -1   0   
$EndComp
$Comp
L conn:CONN_1 P3
U 1 1 5C25B179
P 9200 1500
F 0 "P3" H 9134 1403 40  0000 C CNN
F 1 "CONN_1" H 9150 1540 30  0001 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 9200 1500 50  0001 C CNN
F 3 "" H 9200 1500 50  0001 C CNN
	1    9200 1500
	-1   0    0    1   
$EndComp
$EndSCHEMATC
