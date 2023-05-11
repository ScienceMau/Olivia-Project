import numpy as np
import matplotlib.pyplot as plt
import matplotlib
from matplotlib.gridspec import GridSpec

plt.rcParams['text.usetex'] = True
#plt.rcParams['figure.figsize'] = [12, 12]
plt.rcParams.update({'font.size':18})


atractor1= np.loadtxt('poinc1.dat', delimiter= ',', dtype = float)
atractor2= np.loadtxt('poinc4.dat', delimiter= ',', dtype = float)
atractor3= np.loadtxt('TS1.dat', delimiter= ',', dtype = float)
atractor4= np.loadtxt('TS4.dat', delimiter= ',', dtype = float)


cmap =plt.cm.get_cmap('inferno', 6)
norm = matplotlib.colors.BoundaryNorm(np.arange(0,6,1), cmap.N)


fig = plt.figure(figsize=(16, 8))

gs = GridSpec(nrows=1, ncols=2)
ax0 = fig.add_subplot(gs[0, 0])
ax0.grid(linestyle="--", color='black', alpha=0.3)
ax0.plot(atractor3[:,0], atractor3[:,1],color = 'gray', markersize = 0.9, markeredgewidth=0.2, markeredgecolor = "black")
ax0.plot(atractor1[:,0], atractor1[:,1],'o',color = '#000004', markersize = 0.9, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x_1$')
plt.ylabel(r'$x_2$')
plt.title(r'(a)', loc='left')


ax1 = fig.add_subplot(gs[0, 1])
ax1.grid(linestyle="--", color='black', alpha=0.3)
ax1.plot(atractor4[:,0], atractor4[:,1],color = 'gray', markersize = 0.9, markeredgewidth=0.2, markeredgecolor = "black")
ax1.plot(atractor2[:,0], atractor2[:,1], 'o', color='#420A68', markersize = 0.9, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x_1$')
plt.ylabel(r'$x_2$')
plt.title(r'(b)', loc='left')



fig.subplots_adjust(wspace=0.455,hspace = 0.51)
plt.savefig('teste.png',dpi=300,bbox_inches='tight')
plt.show()
