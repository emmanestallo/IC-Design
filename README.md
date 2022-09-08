# IC-Design
Integrated circuit design using ngspice, MAGIC, XSCHEM, Octave, GNURadio, and SKY130 PDK  
    
  Note that the SKY130 PDK has a scale factor: $1\mu$
  $g_m/I_D$ characterization on the SKY130 n1v8, with nominal $V_{DD} = 1.8V$, we use $V_{DS} = V_{GS} = 0.9$.  
    
  The .control file is found at "nmos_params.txt".  
  ![image](https://user-images.githubusercontent.com/68108648/189139513-27d8c8e9-e24c-48c2-9aa1-373771ba58a9.png)  
  
  The outputs are processed using "to_file.txt" and "octavePlot.m".  
  With $W = 1$ and $L = 0.15$, we get  
  ![image](https://user-images.githubusercontent.com/68108648/189141591-299aa053-5f16-4afa-9294-84bfea33ee0c.png)

  
  
