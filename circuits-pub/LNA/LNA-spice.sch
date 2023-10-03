v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -160 270 -110 {
lab=d}
N 180 -190 230 -190 {
lab=g}
N 270 -270 270 -220 {
lab=d}
N 270 -190 300 -190 {
lab=b}
N 300 -190 330 -190 {
lab=b}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 250 -190 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/iopin.sym} 330 -190 0 0 {name=p1 lab=b
}
C {devices/iopin.sym} 180 -190 2 0 {name=p2 lab=g
}
C {devices/iopin.sym} 270 -270 3 0 {name=p3 lab=d
}
C {devices/iopin.sym} 270 -110 1 0 {name=p4 lab=s}
