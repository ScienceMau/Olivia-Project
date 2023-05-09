# Nonlinear Dynamics Analisys
Para melhor performance dos scripts criados nós indicamos

[![Blog](https://img.shields.io/badge/Julia%20Lang-Download-red?style=for-the-badge)](https://julialang.org/)
[![Blog](https://img.shields.io/badge/Ubuntu-Download-orange?style=for-the-badge)](www.ubuntu.org)
[![Blog](https://img.shields.io/badge/Python-Download-blue?style=for-the-badge)](www.python.org)


The Olivia Project (OP) consists of scripts in Julia and Python language for the analysis of non-linear dynamic systems and we have the calculation of the average power of a mathematical model for energy collection. The scripts that make up the PO calculate the Lyapunov Exponents, bifurcation diagrams, Test-01, Basins of attraction and average power, thus forming a diagnosis of the chaotic or periodic behavior of the analyzed system.


## Installation

### Linux

Open a new terminal and type the commands:

To download Julia Lang's installation packages: `wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.2-linux-x86_64.tar.gz`

To extract .tar.gz: `tar -xvzf julia-1.8.5-linux-x86_64.tar.gz`

Copy and extract the folder to /opt: `sudo cp -r julia-1.8.5 /opt/`

Finally, create a symbolic link to julia inside the /usr/local/bin folder: `sudo ln -s /opt/julia-1.8.5/bin/julia/local/bin/local`

So, if everything went well, just type julia in your terminal and the interpreter starts working. Once that's done, just use the command in julia's terminal to install the necessary packages for the PAP scripts to work: `using Pkg; Pkg.add("Package Name");`

### Windows
 
For installation on Windows systems, just download from <a href="https://julialang.org/"><img align = "center" alt= "julia-lang" heigth = "50" width="70" src= "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/julia/julia-original-wordmark.svg" style="max-width100%;"/></a> the .exe for the system Windows operating system and follow the steps indicated by the app. And then click on the icon on your Desktop and install the libraries. To do so, just type in Julia's terminal: `using Pkg; Pkg.add("Package Name");`

### Ubuntu
For installation in particular use the command: `sudo snap install julia -classic`


#### Packages

For its use it is necessary to install the following packages:
<ul>
<li><a href="https://docs.julialang.org/en/v1/manual/distributed-computing/">Distributed</a></li>
<li><a href="https://juliadynamics.github.io/DynamicalSystems.jl/dev/">Dynamical System</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/SharedArrays/">SharedArrays</a></li>
<li><a href="https://github.com/JuliaIO/MAT.jl">MAT</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/Statistics/">Statistics</a></li>
<li><a href="https://github.com/SciML/OrdinaryDiffEq.jl">OrdinaryDiffEq</a></li>
</ul>


## Codes for Dynamical Analisys

1. **MathModel.jl** : Script to write first order differential equations, parameters and initial conditions.
2. **Lyapunov.jl**: Script that calculates Lyapunov exponent and bifurcation diagram
3. **Time_series.jl**: Script that builds phase space and time series
4. **Recurrence_plot.jl**: Script that calculates the Recurrence Plot and its quantities
5. **Basins.jl**: Script that calculates the attraction basins of a system.
6. **Test-01.jl**: Script that calculates the 01-Test.

## Publications:

1. A. Ribeiro, Mauricio; Jose M. Balthazar, Ângelo M. Tusset, Átila M. Bueno, and Hilson H. Daum. 2022. ‘MEMS-Based Atomic Force Microscope: Nonlinear Dynamics Analysis and Its Control’. Vibration Monitoring and Analysis - Recent Advances [Working Title]. IntechOpen. doi:10.5772/intechopen.108880.

2. A. Ribeiro, Mauricio; Jose M. Balthazar, Hilson H. Daum, Angelo M. Tusset (In Press). 'Nonlinear Dynamics Behavior and Its Control under Frequency-Varying Excitations for Energy Harvesting'. International Journal of Nonlinear Dynamics and Control

3. Mauricio A. Ribeiro, Angelo M. Tusset, Wagner B. Lenz, José M. Balthazar*, Grzegorz Litak; On non-linear dynamics behaviour of a fixed offshore platform for energy harvesting. 16th INTERNATIONAL CONFERENCE Dynamical Systems – Theory and Applications December 6-9, 2021 (On-line)
