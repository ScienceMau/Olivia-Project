import numpy as np
import matplotlib.pyplot as plt
import matplotlib
from matplotlib.gridspec import GridSpec

plt.rcParams['text.usetex'] = True
#plt.rcParams['figure.figsize'] = [12, 12]
plt.rcParams.update({'font.size':18})

bif  = np.loadtxt('bif.dat', delimiter= ',', dtype = float)
lyap = np.loadtxt('lyap1.dat', delimiter= ',', dtype = float)
p    = np.loadtxt('par.dat', delimiter= ',', dtype = float)


fig = plt.figure(figsize=(8, 4))

gs = GridSpec(nrows=2, ncols=1)
ax0 = fig.add_subplot(gs[0, 0])
ax0.grid(linestyle="--", color='black', alpha=0.3)
ax0.plot(bif[:,0], bif[:,1],'o',color = '#000000', markersize = 0.5, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$p$')
plt.ylabel(r'$x_1$')
plt.title(r'(a)', loc='left')

ax1 = fig.add_subplot(gs[1, 0])
ax1.grid(linestyle="--", color='black', alpha=0.3)
ax1.plot(p, lyap, '-', linewidth=1.0)
plt.xlabel(r'$p$')
plt.ylabel(r'$\lambda^{max}$')
plt.title(r'(b)', loc='left')


fig.subplots_adjust(wspace=0.455,hspace = 0.51)
plt.savefig('bif.png',dpi=300,bbox_inches='tight')
plt.show()