v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2730 -1690 2730 -1610 {
lab=GND}
N 2730 -1630 2780 -1630 {
lab=GND}
N 2780 -1630 2780 -1580 {
lab=GND}
N 2730 -1580 2780 -1580 {
lab=GND}
N 2570 -1690 2730 -1690 {
lab=GND}
N 2570 -1690 2570 -1650 {
lab=GND}
N 2650 -1690 2650 -1660 {
lab=GND}
N 2650 -1600 2650 -1580 {
lab=#net1}
N 2650 -1580 2690 -1580 {
lab=#net1}
N 2730 -1550 2730 -1500 {
lab=#net2}
N 2730 -1500 2860 -1500 {
lab=#net2}
N 2860 -1580 2860 -1500 {
lab=#net2}
N 2730 -1690 2860 -1690 {
lab=GND}
N 2860 -1690 2860 -1640 {
lab=GND}
C {devices/gnd.sym} 2570 -1650 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 2650 -1630 0 0 {name=V1 value=0.9
}
C {devices/vsource.sym} 2860 -1610 0 0 {name=V2 value=0.9}
C {devices/code.sym} 2950 -1630 0 0 {name=ngspice 
only_toplevel=false 
value="

.include init.txt
.include pmos_params.txt

.param length = 0.15
.param width = 1




"

}
C {sky130_fd_pr/pfet_01v8.sym} 2710 -1580 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
