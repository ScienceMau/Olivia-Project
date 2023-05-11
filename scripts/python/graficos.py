import numpy as np
import matplotlib.pyplot as plt
import matplotlib


plt.rcParams['text.usetex'] = True
plt.rcParams['figure.figsize'] = [9, 9]
plt.rcParams.update({'font.size':25})

matrix = np.loadtxt('matrix.dat', delimiter= ',', dtype = int)
matrix = matrix + 1

cmap =plt.cm.get_cmap('inferno', 6)
norm = matplotlib.colors.BoundaryNorm(np.arange(0,6,1), cmap.N)

figure = plt.figure()
plt.imshow(matrix,cmap=cmap,extent = [-0.9, 0.9, -0.9, 0.9],interpolation='bilinear')
plt.clim(0.5, 6.5)
plt.title(r'(b)')
plt.xlabel(r'$x^{0}_1$')
plt.ylabel(r'$x^{0}_2$')

plt.colorbar(ticks=np.linspace(1,6,6), label=r'$\#$ Attractors')
plt.savefig('basins_1.png',dpi=300,bbox_inches='tight')