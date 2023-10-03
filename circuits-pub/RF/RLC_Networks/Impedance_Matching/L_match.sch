v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2450 -1840 2490 -1840 {
lab=in}
N 2550 -1840 2580 -1840 {
lab=#net1}
N 2580 -1840 2580 -1820 {
lab=#net1}
N 2450 -1750 2580 -1750 {
lab=GND}
N 2580 -1760 2580 -1750 {
lab=GND}
N 2580 -1840 2640 -1840 {
lab=#net1}
N 2580 -1750 2700 -1750 {
lab=GND}
N 2700 -1840 2720 -1840 {
lab=out}
N 2720 -1840 2740 -1840 {
lab=out}
N 2700 -1750 2740 -1750 {
lab=GND}
N 2740 -1760 2740 -1750 {
lab=GND}
N 2740 -1840 2740 -1820 {
lab=out}
N 2420 -1840 2450 -1840 {
lab=in}
N 2420 -1840 2420 -1820 {
lab=in}
N 2420 -1760 2420 -1750 {
lab=GND}
N 2420 -1750 2450 -1750 {
lab=GND}
N 2740 -1840 2780 -1840 {
lab=out}
N 2740 -1750 2780 -1750 {
lab=GND}
N 2580 -1750 2580 -1720 {
lab=GND}
C {devices/vsource.sym} 2420 -1790 0 0 {name=V1 value="0 AC 1 SIN(10 1 100MEG)"}
C {devices/capa.sym} 2580 -1790 0 0 {name=C1
m=1
value=95.493p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 2520 -1840 1 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/ind.sym} 2670 -1840 1 0 {name=L1
m=1
value=23.873n
footprint=1206
device=inductor}
C {devices/res.sym} 2740 -1790 0 0 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2580 -1720 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2780 -1840 0 1 {name=l2 sig_type=std_logic lab=out}
C {devices/code.sym} 2890 -1830 0 0 {name=ngspice 
only_toplevel=false 

value="
.control 

tran 0.1n 100n
plot v(out) 


.endc


"}
C {devices/lab_pin.sym} 2420 -1840 0 0 {name=l2 sig_type=std_logic lab=in}
