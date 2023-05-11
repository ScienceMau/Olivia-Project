import numpy as np
import matplotlib.pyplot as plt
import matplotlib
from matplotlib.gridspec import GridSpec

plt.rcParams['text.usetex'] = True
#plt.rcParams['figure.figsize'] = [12, 12]
plt.rcParams.update({'font.size':18})


matrix = np.loadtxt('matrix.dat', delimiter= ',', dtype = int)
matrix = matrix + 1

atractor1= np.loadtxt('atrator_1_0.00057572.dat', delimiter= ',', dtype = float)
atractor2= np.loadtxt('atrator_2_0.00057572.dat', delimiter= ',', dtype = float)
atractor3= np.loadtxt('atrator_3_0.00057572.dat', delimiter= ',', dtype = float)
atractor4= np.loadtxt('atrator_4_0.00057572.dat', delimiter= ',', dtype = float)
atractor5= np.loadtxt('atrator_5_0.00057572.dat', delimiter= ',', dtype = float)


cmap =plt.cm.get_cmap('inferno', 5)
norm = matplotlib.colors.BoundaryNorm(np.arange(0,5,1), cmap.N)


fig = plt.figure(figsize=(16, 8))

gs = GridSpec(nrows=3, ncols=4)
ax0 = fig.add_subplot(gs[0, 0])
ax0.grid(linestyle="--", color='black', alpha=0.3)
ax0.plot(atractor1[:,0], atractor1[:,1],'o',color = '#000004', markersize = 4, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x^{att}_1$')
plt.ylabel(r'$x^{att}_2$')
plt.title(r'(a)', loc='left')

ax1 = fig.add_subplot(gs[1, 0])
ax1.grid(linestyle="--", color='black', alpha=0.3)
ax1.plot(atractor2[:,0], atractor2[:,1], 'o', color='#932667', markersize = 4, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x^{att}_1$')
plt.ylabel(r'$x^{att}_2$')
plt.title(r'(b)', loc='left')

ax2 = fig.add_subplot(gs[2, 0])
ax2.grid(linestyle="--", color='black', alpha=0.3)
ax2.plot(atractor3[:,0], atractor3[:,1], 'o', color='#DD123A', markersize = 4, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x^{att}_1$')
plt.ylabel(r'$x^{att}_2$')
plt.title(r'(c)', loc='left')

ax4 = fig.add_subplot(gs[0, 1])
ax4.grid(linestyle="--", color='black', alpha=0.3)
ax4.plot(atractor4[:,0], atractor4[:,1], 'o', color='#FCA50A', markersize = 4, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x^{att}_1$')
plt.ylabel(r'$x^{att}_2$')
plt.title(r'(d)', loc='left')

ax5 = fig.add_subplot(gs[1, 1])
ax5.grid(linestyle="--", color='black', alpha=0.3)
ax5.plot(atractor5[:,0], atractor5[:,1], 'o', color='#FCFFA4', markersize = 4, markeredgewidth=0.2, markeredgecolor = "black")
plt.xlabel(r'$x^{att}_1$')
plt.ylabel(r'$x^{att}_2$')
plt.title(r'(e)', loc='left')

ax3 = fig.add_subplot(gs[:, 2:])
plt.imshow(matrix,cmap=cmap,extent = [-0.9, 0.9, -0.9, 0.9],interpolation='bilinear')
plt.clim(0.5, 5.5)
plt.title(r'(g)')
plt.xlabel(r'$x^{0}_1$')
plt.ylabel(r'$x^{0}_2$')
plt.colorbar(ticks=np.linspace(1,5,5),  label=r'$\#$ Attractors')


fig.subplots_adjust(wspace=0.455,hspace = 0.51)
plt.savefig('teste.png',dpi=300,bbox_inches='tight')
plt.show()
