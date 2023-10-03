<Qucs Schematic 2.0.0>
<Properties>
  <View=0,-19,3493,699,1,0,0>
  <Grid=10,10,1>
  <DataSet=LNA-sim.dat>
  <DataDisplay=LNA-sim.dpl>
  <OpenDisplay=1>
  <Script=LNA-sim.m>
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
  <SPICEINIT SPICEINIT1 1 790 20 -35 16 0 0 "\nset ngbehavior=hsa\nset ng_nomodcheck" 1>
  <SpiceLib SKY130 1 60 10 -14 16 0 0 "/usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" 1 "tt" 1>
  <SpicePar VG 1 70 120 -29 16 0 0 "vg=900m" 1>
  <SPICE nfet_01v8_lvt 1 410 270 -26 -89 0 0 "/home/arficx/Desktop/circuits/LNA/simulation/LNA-spice.spice" 0 "_netg,_netd,_nets,_netb" 0 "yes" 0 "none" 0>
  <GND * 1 410 430 0 0 0 0>
  <VProbe Pr1 1 150 400 28 -31 0 0>
  <IProbe id 1 510 240 -26 16 1 2>
  <Vdc V2 1 590 300 18 -26 0 1 "1 V" 1>
  <Vdc vg 1 210 290 18 -26 0 1 "vg" 1>
  <.CUSTOMSIM CUSTOM1 1 720 200 0 51 0 0 "\n\nsave all\n\nsave @m.Xnfet_01v8_lvt.xm1.msky130_fd_pr__nfet_01v8_lvt[id]\nsave @m.Xnfet_01v8_lvt.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]\n\n\ndc vg -0.2 1.8 1m\n\nlet idn=@m.Xnfet_01v8_lvt.xm1.msky130_fd_pr__nfet_01v8_lvt[id]\nlet gm=@m.Xnfet_01v8_lvt.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]\n\nlet gmoverid=gm/idn\n\n" 1 "V(Pr1);Vid#branch;idn;gm;gmoverid" 0 "" 0>
</Components>
<Wires>
  <210 240 210 260 "" 0 0 0 "">
  <210 320 210 380 "" 0 0 0 "">
  <210 380 410 380 "" 0 0 0 "">
  <440 300 440 350 "" 0 0 0 "">
  <410 350 440 350 "" 0 0 0 "">
  <140 420 140 510 "" 0 0 0 "">
  <20 510 140 510 "" 0 0 0 "">
  <20 210 20 510 "" 0 0 0 "">
  <20 210 320 210 "" 0 0 0 "">
  <210 240 320 240 "" 0 0 0 "">
  <320 240 380 240 "" 0 0 0 "">
  <320 210 320 240 "" 0 0 0 "">
  <160 420 160 470 "" 0 0 0 "">
  <160 470 350 470 "" 0 0 0 "">
  <350 420 350 470 "" 0 0 0 "">
  <410 380 410 400 "" 0 0 0 "">
  <410 420 410 430 "" 0 0 0 "">
  <350 420 410 420 "" 0 0 0 "">
  <440 240 480 240 "" 0 0 0 "">
  <410 400 410 420 "" 0 0 0 "">
  <410 400 590 400 "" 0 0 0 "">
  <590 330 590 400 "" 0 0 0 "">
  <590 240 590 270 "" 0 0 0 "">
  <540 240 590 240 "" 0 0 0 "">
  <380 300 380 360 "" 0 0 0 "">
  <410 350 410 360 "" 0 0 0 "">
  <410 360 410 380 "" 0 0 0 "">
  <380 360 410 360 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
