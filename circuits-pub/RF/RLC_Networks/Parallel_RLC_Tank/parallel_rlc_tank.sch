v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1840 -1440 1840 -1400 {
lab=out}
N 1900 -1440 1900 -1400 {
lab=out}
N 1970 -1440 1970 -1400 {
lab=out}
N 1840 -1440 1900 -1440 {
lab=out}
N 1900 -1440 1970 -1440 {
lab=out}
N 1840 -1340 1840 -1320 {
lab=GND}
N 1840 -1320 1970 -1320 {
lab=GND}
N 1970 -1340 1970 -1320 {
lab=GND}
N 1900 -1340 1900 -1320 {
lab=GND}
N 1900 -1320 1900 -1300 {
lab=GND}
N 1760 -1320 1840 -1320 {
lab=GND}
N 1740 -1320 1760 -1320 {
lab=GND}
N 1740 -1440 1840 -1440 {
lab=out}
N 1970 -1320 2030 -1320 {
lab=GND}
N 1970 -1440 1980 -1440 {
lab=out}
N 1980 -1440 2030 -1440 {
lab=out}
N 1710 -1340 1710 -1320 {
lab=GND}
N 1710 -1320 1740 -1320 {
lab=GND}
N 1710 -1440 1710 -1400 {
lab=out}
N 1710 -1440 1740 -1440 {
lab=out}
C {devices/ind.sym} 1900 -1370 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {devices/res.sym} 1840 -1370 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1970 -1370 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1900 -1300 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 1710 -1370 0 0 {name=I0 
value="10m AC 1"}
C {devices/code.sym} 2110 -1420 0 0 {name=ngspice
only_toplevel=false 

value="

.options savecurrents

.control
save all 

ac dec 10 1Meg 1T 
plot db(v(out))


.endc

"}
C {devices/lab_pin.sym} 2030 -1440 0 1 {name=l2 sig_type=std_logic lab=out
}
