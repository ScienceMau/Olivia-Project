![twitter_header_1500x500](https://github.com/ScienceMau/Olivia-Project/assets/61286097/be1dcb73-ba70-4de7-aac0-c3c1c8073b39)


For better performance of the created scripts we indicate:

[![Blog](https://img.shields.io/badge/Julia%20Lang-Download-red?style=for-the-badge)](https://julialang.org/)
[![Blog](https://img.shields.io/badge/Ubuntu-Download-orange?style=for-the-badge)](www.ubuntu.org)
[![Blog](https://img.shields.io/badge/Python-Download-blue?style=for-the-badge)](www.python.org)


The Olivia Project (OP) consists of scripts in Julia and Python language for the analysis of non-linear dynamic systems and we have the calculation of the average power of a mathematical model for energy collection. The scripts that make up the PO calculate the Lyapunov Exponents, Bifurcation Diagrams, 01-Test and Basins of attraction, Portrait Phase and Poincare Map, thus forming a diagnosis of the chaotic or periodic behavior of the analyzed nonlinear dynamics system.

Access to repository in 

[![Blog](https://img.shields.io/badge/Repository-Download-red?style=for-the-badge)](www.github.com/ScienceMau/Olivia-Project)


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


### Packages

For its use it is necessary to install the following packages:
<ul>
<li><a href="https://docs.julialang.org/en/v1/manual/distributed-computing/">Distributed</a></li>
<li><a href="https://juliadynamics.github.io/DynamicalSystems.jl/dev/">Dynamical System</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/SharedArrays/">SharedArrays</a></li>
<li><a href="https://github.com/JuliaIO/MAT.jl">MAT</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/Statistics/">Statistics</a></li>
<li><a href="https://github.com/SciML/OrdinaryDiffEq.jl">OrdinaryDiffEq</a></li>
 <li><a href="https://docs.julialang.org/en/v1/stdlib/DelimitedFiles/">DelimitedFiles</a></li>
</ul>


## Codes 

### Dynamical Analisys (In Julia)

1. **MathModel.jl** : Script to write first order differential equations, parameters and initial conditions.
2. **Lyapunov.jl**: Script that calculates Lyapunov exponent and bifurcation diagram
3. **Phase_portrait_and_poincare_map.jl**: Script that builds Phase Portrait and Time Series
4. **Basins.jl**: Script that calculates the Basins of attraction of system.
5. **Test-01.jl**: Script that calculates the 01-Test.

### Plots (In Python)

1. **Lyapunov_and_bifurcation_plot.py** 

Example of result obtained with the Lyapunov.jl e Lyapunov_and_bifurcation_plot.py

![bif_lyapunov_intermitent](https://github.com/ScienceMau/Olivia-Project/assets/61286097/9fbe9b7a-a7d8-4666-a75f-b6442382d7d3)


2. **Basins_and_attractors_plot.py**

Example of result obtained with the Basins.jl and basins_and_attractors_plot.py

![bacia_atracao_casimir](https://github.com/ScienceMau/Olivia-Project/assets/61286097/4e39997c-bb46-45e3-a99f-b20e60e9f072)

3. **Phase_portrait_and_poincare_map_plot.py**

Example of result obtained with the Phase_portrait_and_poincare_map.jl and Phase_portrait_and_poincare_map_plot.py

![poincare_TS_intermitent](https://github.com/ScienceMau/Olivia-Project/assets/61286097/3a175736-b2ba-4a8d-bfa1-b2bd5f4cbb6b)



## Publications:

1. Ribeiro, Mauricio A.; Jose M. Balthazar, Ângelo M. Tusset, Átila M. Bueno, and Hilson H. Daum. 2022. ‘MEMS-Based Atomic Force Microscope: Nonlinear Dynamics Analysis and Its Control’. Vibration Monitoring and Analysis - Recent Advances [Working Title]. IntechOpen. doi:10.5772/intechopen.108880.

2. Ribeiro, Mauricio A.; Jose M. Balthazar, Hilson H. Daum, Angelo M. Tusset (In Press). 'Nonlinear Dynamics Behavior and Its Control under Frequency-Varying Excitations for Energy Harvesting'. International Journal of Nonlinear Dynamics and Control

3. Ribeiro, Mauricio A., Angelo M. Tusset, Wagner B. Lenz, José M. Balthazar*, Grzegorz Litak; On non-linear dynamics behaviour of a fixed offshore platform for energy harvesting. 16th INTERNATIONAL CONFERENCE Dynamical Systems – Theory and Applications December 6-9, 2021 (On-line)
