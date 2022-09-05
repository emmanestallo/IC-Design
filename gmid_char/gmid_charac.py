import numpy as np 
import matplotlib.pyplot as plt 

gmoverid = np.loadtxt('gmoverid.txt')[:,1]
ft = np.loadtxt('ft.txt')[:,1]
id = np.loadtxt('id.txt')[:,1]
gain = np.loadtxt('gain.txt')[:,1]
vdsat = np.loadtxt('vdsat.txt')[:,1]

fig, ax = plt.subplots(2,2)

ax[0,0].plot(gmoverid, ft)
ax[0,0].set_xlabel('gm/id') 
ax[0,0].set_ylabel('ft') 
ax[0,0].grid() 

ax[0,1].plot(gmoverid, gain)
ax[0,1].set_xlabel('gm/id') 
ax[0,1].set_ylabel('gain') 
ax[0,1].grid() 

ax[1,0].plot(gmoverid, id)
ax[1,0].set_xlabel('gm/id') 
ax[1,0].set_ylabel('id') 
ax[1,0].grid() 

ax[1,1].plot(gmoverid, vdsat)
ax[1,1].set_xlabel('gm/id') 
ax[1,1].set_ylabel('vdsat') 
ax[1,1].grid() 

fig.tight_layout()
plt.show()