# Nonlinear Dynamics Analisys
[![Blog](https://img.shields.io/badge/Julia%20Lang-Download-red)](https://julialang.org/)
[![Blog](https://img.shields.io/badge/Ubuntu-Download-orange)](www.ubuntu.org)
[![Blog](https://img.shields.io/badge/Python-Download-blue)](www.python.org)

## Lyapunov Exponent

The Lyapunov Exponent describes the phase velocity with which two nearby points in phase space move closer or further apart. For one dimension of phase space there is a Lyapunov exponent which forms the Lyapunov spectrum. It is often interesting to observe only the largest Lyapunov exponent, as this determines the general behavior of the system. For the analysis of the parameter space, we use the maximum Lyapunov exponent to determine the parameter space and thus observe the stability regions of the orbits as a function of the parameter space of the nonlinear dynamic system. Calculation is using DynamicalSystems.jl library. The Figure (1) show a example for the parameter space do Maximum Lyapunov Exponent. As I call the 2d Lyapunov.

![Bacia_atracao](/docs/assets/images/Imagem1.png)


## Basins of Attraction

In this project we will propose some algorithms to determine basins of attraction of nonlinear dynamic systems. However, we use the julia language to determine the attractors and the basins of attraction, however, for the construction of the graphs we will use the python language. The analysis for the construction of the basins of attraction is using DynamicalSystems.jl.

### Example Basins of Attraction


![Bacia_atracao](/docs/assets/images/bacias_intermitent.png)


### References:
1. A. Ribeiro, Mauricio; Jose M. Balthazar, Ângelo M. Tusset, Átila M. Bueno, and Hilson H. Daum. 2022. ‘MEMS-Based Atomic Force Microscope: Nonlinear Dynamics Analysis and Its Control’. Vibration Monitoring and Analysis - Recent Advances [Working Title]. IntechOpen. doi:10.5772/intechopen.108880.

2. A. Ribeiro, Mauricio; Jose M. Balthazar, Hilson H. Daum, Angelo M. Tusset (In Press). 'Nonlinear Dynamics Behavior and Its Control under Frequency-Varying Excitations for Energy Harvesting'. International Journal of Nonlinear Dynamics and Control

3. Mauricio A. Ribeiro, Angelo M. Tusset, Wagner B. Lenz, José M. Balthazar*, Grzegorz Litak; On non-linear dynamics behaviour of a fixed offshore platform for energy harvesting. 16th INTERNATIONAL CONFERENCE Dynamical Systems – Theory and Applications December 6-9, 2021 (On-line)
