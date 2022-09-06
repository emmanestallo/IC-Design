import numpy as np 
import matplotlib.pyplot as plt 

w = 1e-6
gmoverid = np.loadtxt('gmoverid.txt')[:,1]
ft = np.loadtxt('ft.txt')[:,1]
id = np.loadtxt('id.txt')[:,1]
gain = np.loadtxt('gmro.txt')[:,1]
vdsat = np.loadtxt('vdsat.txt')[:,1]
vgs = np.loadtxt('vgs.txt')[:,1]

fig, ax = plt.subplots(2,2)

ax[0,0].plot(gmoverid, ft)
ax[0,0].set_xlabel('gm/id') 
ax[0,0].set_ylabel('ft') 
ax[0,0].grid(linestyle='--') 

ax[0,1].plot(gmoverid, gain)
ax[0,1].set_xlabel('gm/id') 
ax[0,1].set_ylabel('gm/gds') 
ax[0,1].grid(linestyle='--') 

ax[1,0].plot(gmoverid, id/w)
ax[1,0].set_xlabel('gm/id') 
ax[1,0].set_ylabel('id/w') 
ax[1,0].grid(linestyle='--') 

ax[1,1].plot(vgs, gmoverid)
ax[1,1].set_xlabel('gm/id') 
ax[1,1].set_ylabel('vgs') 
ax[1,1].grid(linestyle='--') 

fig.tight_layout()
plt.show()