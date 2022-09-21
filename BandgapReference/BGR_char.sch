v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -190 130 -150 {
lab=GND}
N 130 -220 170 -220 {
lab=GND}
N 130 -180 170 -180 {
lab=GND}
N 170 -220 170 -180 {
lab=GND}
N 90 -270 90 -220 {
lab=#net1}
N 90 -270 130 -270 {
lab=#net1}
N 130 -270 130 -250 {
lab=#net1}
N 130 -320 130 -270 {
lab=#net1}
N 130 -320 230 -320 {
lab=#net1}
N 230 -320 230 -270 {
lab=#net1}
N 130 -150 130 -140 {
lab=GND}
N 230 -210 230 -150 {
lab=GND}
N 130 -140 130 -130 {
lab=GND}
C {devices/code.sym} 500 -160 0 0 {name=NGSPICE
only_toplevel=false 

value=" 
.include init.txt 

.control
save all

save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
save @m.xm1.msky130_fd_pr__nfet_01v8[vgs]

dc v1 0 1 1m

let gm = @m.xm1.msky130_fd_pr__nfet_01v8[gm]
let id = @m.xm1.msky130_fd_pr__nfet_01v8[id]
let gds = @m.xm1.msky130_fd_pr__nfet_01v8[gds]
let cgg = @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
let vdsat = @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
let vgs = @m.xm1.msky130_fd_pr__nfet_01v8[vgs]

let gmro = gm/gds
let ft = gm/(2*pi*cgg)
let gmoverid = gm/id

.endc 


"}
C {sky130_fd_pr/nfet_01v8.sym} 110 -220 0 0 {name=M1
L=0.6
W=11.1
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
C {devices/vsource.sym} 230 -240 0 0 {name=V1 value=0.9
}
C {devices/gnd.sym} 130 -130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 230 -150 0 0 {name=l1 lab=GND}
