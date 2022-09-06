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
C {sky130_fd_pr/pfet_01v8.sym} 2710 -1580 0 0 {name=M1
L='length'
W='width'
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
C {devices/gnd.sym} 2570 -1650 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 2650 -1630 0 0 {name=V1 value=0.9
}
C {devices/vsource.sym} 2860 -1610 0 0 {name=V2 value=0.9}
C {devices/code.sym} 2950 -1630 0 0 {name=ngspice 
only_toplevel=false 
value="

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option wnflag=1 

.param length = 0.4
.param width = 1

.control 
save all 

save @m.xm1.msky130_fd_pr__pfet_01v8[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8[id]
save @m.xm1.msky130_fd_pr__pfet_01v8[gds]
save @m.xm1.msky130_fd_pr__pfet_01v8[cgg]
save @m.xm1.msky130_fd_pr__pfet_01v8[vdsat]
save @m.xm1.msky130_fd_pr__pfet_01v8[vgs]

dc v1 0 1 1m  

let gm = @m.xm1.msky130_fd_pr__pfet_01v8[gm]
let id = @m.xm1.msky130_fd_pr__pfet_01v8[id]
let gds = @m.xm1.msky130_fd_pr__pfet_01v8[gds]
let cgg = @m.xm1.msky130_fd_pr__pfet_01v8[cgg]
let vdsat = @m.xm1.msky130_fd_pr__pfet_01v8[vdsat]
let vgs = @m.xm1.msky130_fd_pr__pfet_01v8[vgs]

let gmro = gm/gds 
let ft = gm/(2*pi*cgg)
let gmoverid = gm/id

wrdata gmro.txt gmro
wrdata ft.txt ft 
wrdata gmoverid.txt gmoverid 
wrdata id.txt id
wrdata vdsat.txt vdsat
wrdata vgs.txt vgs

.endc


"

}
