v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -290 290 -240 {
lab=GND}
N 200 -320 250 -320 {
lab=vgs}
N 290 -400 290 -350 {
lab=#net1}
N 290 -320 320 -320 {
lab=GND}
N 320 -320 320 -270 {
lab=GND}
N 290 -270 320 -270 {
lab=GND}
N 170 -320 170 -310 {
lab=vgs}
N 170 -320 200 -320 {
lab=vgs}
N 170 -250 170 -240 {
lab=GND}
N 170 -240 290 -240 {
lab=GND}
N 290 -400 410 -400 {
lab=#net1}
N 410 -400 410 -360 {
lab=#net1}
N 410 -300 410 -240 {
lab=GND}
N 290 -240 410 -240 {
lab=GND}
N 290 -240 290 -200 {
lab=GND}
N 190 -360 210 -360 {
lab=vgs}
N 210 -360 210 -320 {
lab=vgs}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 270 -320 0 0 {name=M1
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/netlist_not_shown.sym} 610 -370 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.include init.txt 

.control
save all

save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]

dc V1 0 1.8 1m

let id=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
let gm=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
let cgg=@m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg] 

let ft = gm/(2*pi*cgg)




.endc







"}
C {devices/gnd.sym} 290 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 170 -280 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 410 -330 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 190 -360 0 0 {name=p1 sig_type=std_logic lab=vgs
}
