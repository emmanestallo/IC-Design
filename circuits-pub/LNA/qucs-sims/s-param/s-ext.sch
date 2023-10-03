<Qucs Schematic 2.0.0>
<Properties>
  <View=-384,-119,1162,770,1,133,0>
  <Grid=10,10,1>
  <DataSet=s-ext.dat>
  <DataDisplay=s-ext.dpl>
  <OpenDisplay=1>
  <Script=s-ext.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 210 410 0 0 0 0>
  <GND * 1 620 420 0 0 0 0>
  <GND * 1 350 350 0 0 0 0>
  <GND * 1 500 350 0 0 0 0>
  <SpiceLib SpiceLib1 1 50 -20 -14 16 0 0 "/usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" 1 "tt" 1>
  <SPICEINIT SPICEINIT1 1 680 -20 -35 16 0 0 "\nset ngbehavior=hsa\nset ng_nomodcheck" 1>
  <Pac P1 1 210 280 18 -26 0 1 "1" 1 "50 Ohm" 1 "1" 0 "5G" 0 "26.85" 0>
  <SPICE X1 1 440 250 -26 -89 0 0 "/home/arficx/Desktop/circuits/LNA/qucs-sims/s-param/LNA-spice.spice" 0 "_netg,_netd,_netb,_nets" 0 "yes" 0 "none" 0>
  <Pac P2 1 620 310 18 -26 0 1 "2" 1 "50 Ohm" 1 "1" 0 "5G" 0 "26.85" 0>
  <SpicePar SpicePar1 1 -180 200 -29 16 0 0 "width=10" 1>
  <.SP SP1 1 -220 -30 0 65 0 0 "log" 1 "1" 1 "10G" 1 "1001" 1 "yes" 0 "1" 1 "2" 1 "yes" 0 "yes" 0>
  <.SW SW1 1 -210 320 0 65 0 0 "SP1" 1 "lin" 1 "width" 1 "1" 1 "10" 1 "10" 1 "false" 0>
</Components>
<Wires>
  <210 220 210 250 "" 0 0 0 "">
  <210 220 410 220 "" 0 0 0 "">
  <470 220 620 220 "" 0 0 0 "">
  <620 220 620 280 "" 0 0 0 "">
  <210 310 210 410 "" 0 0 0 "">
  <620 340 620 420 "" 0 0 0 "">
  <350 280 410 280 "" 0 0 0 "">
  <350 280 350 310 "" 0 0 0 "">
  <470 280 500 280 "" 0 0 0 "">
  <500 280 500 350 "" 0 0 0 "">
  <350 310 350 350 "" 0 0 0 "">
  <350 310 440 310 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
