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
C {devices/vsource.sym} 1200 -1880 0 0 {name=V1 value=0.9
}
C {devices/vsource.sym} 960 -1840 0 0 {name=V2 value=0.9
}
C {devices/gnd.sym} 960 -1780 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1200 -1810 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1050 -1820 0 0 {name=l1 lab=GND}
C {devices/code.sym} 1320 -1940 0 0 {name="ngspice" 
only_toplevel="false" 
value="

.include init.txt
.include nmos_params.txt

.param length = 0.15
.param width = 1


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
