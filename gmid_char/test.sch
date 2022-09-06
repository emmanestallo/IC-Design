v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1050 -2000 1050 -1920 {
lab=#net1}
N 960 -1810 960 -1780 {
lab=GND}
N 1050 -1860 1050 -1820 {
lab=GND}
N 1200 -1850 1200 -1810 {
lab=GND}
N 960 -1890 960 -1870 {
lab=#net2}
N 960 -1890 1010 -1890 {
lab=#net2}
N 1050 -1890 1080 -1890 {
lab=GND}
N 1050 -1850 1080 -1850 {
lab=GND}
N 1080 -1890 1080 -1850 {
lab=GND}
N 1200 -1930 1200 -1910 {
lab=#net1}
N 1050 -2000 1200 -2000 {
lab=#net1}
N 1200 -2000 1200 -1990 {
lab=#net1}
N 1200 -1990 1200 -1930 {
lab=#net1}
C {devices/vsource.sym} 1200 -1880 0 0 {name=V1 value=1
}
C {devices/vsource.sym} 960 -1840 0 0 {name=V2 value=1}
C {devices/gnd.sym} 960 -1780 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1200 -1810 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1050 -1820 0 0 {name=l1 lab=GND}
C {devices/code.sym} 1290 -1940 0 0 {name=ngspice 
only_toplevel=false 
value="

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option wnflag=1 
.param length = 0.4
.param width = 1

.control 
save all 

save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
save @m.xm1.msky130_fd_pr__nfet_01v8[vgs]

dc v2 0 1 1m  

let gm = @m.xm1.msky130_fd_pr__nfet_01v8[gm]
let id = @m.xm1.msky130_fd_pr__nfet_01v8[id]
let gds = @m.xm1.msky130_fd_pr__nfet_01v8[gds]
let cgg = @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
let vdsat = @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
let vgs = @m.xm1.msky130_fd_pr__nfet_01v8[vgs]

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


"}
C {sky130_fd_pr/nfet_01v8.sym} 1030 -1890 0 0 {name=M1
L="length"
W="width"
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
