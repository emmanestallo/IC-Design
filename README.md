# Analog/RF IC Design
Integrated circuit design using NGSPICE, QUCS-S, MAGIC, XSCHEM, Octave, GNURadio, and SKY130 PDK  
    
  ## NMOS Characterization: <br>
  SKY130 PDK scale factor: $1\mu$  
    
  For the $g_m/I_D$ characterization on the SKY130 n1v8 with nominal $V_{DD} = 1.8V$, we use $V_{DS} = V_{GS} = 0.9$.  
    
  The .control file is found at "nmos_params.txt".  
  ![image](https://user-images.githubusercontent.com/68108648/189139513-27d8c8e9-e24c-48c2-9aa1-373771ba58a9.png)  
  
  The outputs are processed using "to_file.txt" and "octavePlot.m".  
  With $W = 1$ and $L = 0.15$, we get  
  ![image](https://user-images.githubusercontent.com/68108648/189141591-299aa053-5f16-4afa-9294-84bfea33ee0c.png)
    
  ## S-Parameter Analysis ($NF_{min}$)
  It is also possible to create a subcircuit in XSCHEM and import it in QUCS-S for S-Parameter simulation. 
  ![image](https://github.com/emmanestallo/IC-Design/blob/main/circuits-pub/LNA/s-param/1v8_lvt_nfmin.png)
    
  ## Impedance Matching: <br>   
  The python code for pi-matching is found at "pi_match.py"  
    
  The script asks for the load and source resistances, bandwidth, and center frequency.    
  ![image](https://user-images.githubusercontent.com/68108648/189143356-e0a54d42-b421-49e6-a767-51435a7b635c.png)
    
  Outputs: Q-factor, L, C of the pi-matching network for both the DC pass and DC block topologies.  
    
  Future updates: 
  * Other impedance matching topologies 
  * Automated sizing of transistors from the $g_m/I_D$ characterization 
  * Design of RF blocks 
