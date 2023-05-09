# Nonlinear Dynamics Analisys
Para melhor performance dos scripts criados nós indicamos

[![Blog](https://img.shields.io/badge/Julia%20Lang-Download-red?style=for-the-badge)](https://julialang.org/)
[![Blog](https://img.shields.io/badge/Ubuntu-Download-orange?style=for-the-badge)](www.ubuntu.org)
[![Blog](https://img.shields.io/badge/Python-Download-blue?style=for-the-badge)](www.python.org)


O Projeto Olivia (PO) constitui de scripts em linguagem Julia e Python para analise de sistemas dinâmicos não lineares e temos o cálculo da potencia média de um modelo matemático para coleta de energia.  Os scripts que constituem o PO calculam os Expoentes de Lyapunov, diagramas de bifurcações, o teste 01, bacias de atração e a potencia média e sendo assim formando um diagnóstico do comportamento caótico ou periódico do sistema analisado.
 
 
## Installation
### Linux
Abra um novo terminal e digite os comandos:

Para download dos pacotes de intalação de Julia Lang:`wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.2-linux-x86_64.tar.gz`


 Para extrair .tar.gz:
`tar -xvzf julia-1.8.5-linux-x86_64.tar.gz`
 
 Copie e extraia a pasta para /opt:
 `sudo cp -r julia-1.8.5 /opt/`
 
 Finalmente, crie um link simbólico para julia dentro da pasta /usr/local/bin: `sudo ln -s /opt/julia-1.8.5/bin/julia/local/bin/local`
 
 Então, se deu tudo certo, basta digitar julia em seu terminal que o interpretador começa a funcionar. Uma vez feito isso basta usar o comando no terminal do julia para instalar os pacotes necessários para o funcionamento dos scripts do PAP: `using Pkg; Pkg.add("Package Name");`

<p> For its use it is necessary to install the following packages:
<ul>
<li><a href="https://docs.julialang.org/en/v1/manual/distributed-computing/">Distributed</a></li>
<li><a href="https://juliadynamics.github.io/DynamicalSystems.jl/dev/">Dynamical System</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/SharedArrays/">SharedArrays</a></li>
<li><a href="https://github.com/JuliaIO/MAT.jl">MAT</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/Statistics/">Statistics</a></li>
<li><a href="https://github.com/SciML/OrdinaryDiffEq.jl">OrdinaryDiffEq</a></li>
</ul>

### Windows
 
 Para a instalação no sistema windows basta baixar em <a href="https://julialang.org/"><img align = "center" alt= "julia-lang" heigth = "50" width="70" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/julia/julia-original-wordmark.svg"  style="max-width100%;"/></a> o .exe para o sistema operacional Windows e seguir os passos indicados pelo app. E então clicar no icone em seu Desktop e instalar as bibliotecas. Para isso basta digitar no terminal do julia: `using Pkg; Pkg.add("Package Name");`

<p> For its use it is necessary to install the following packages:
<ul>
<li><a href="https://docs.julialang.org/en/v1/manual/distributed-computing/">Distributed</a></li>
<li><a href="https://juliadynamics.github.io/DynamicalSystems.jl/dev/">Dynamical System</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/SharedArrays/">SharedArrays</a></li>
<li><a href="https://github.com/JuliaIO/MAT.jl">MAT</a></li>
<li><a href="https://docs.julialang.org/en/v1/stdlib/Statistics/">Statistics</a></li>
<li><a href="https://github.com/SciML/OrdinaryDiffEq.jl">OrdinaryDiffEq</a></li>
</ul>
</p>

### Ubuntu

Para instalação em especial utilizar o commando `sudo snap install julia -classic`


## Codes for Dynamical Analisys

### MathModel.jl

Script que escrevesse as equações diferenciais de primeira ordem, os parâmetros e as condições iniciais.

### lyapunov.jl
Script que calcula o expoente de Lyapnov e o diagrama de bifurcação

### time_series.jl
Script que monta o espaço de fase e e as séries temporaos

### recurrence_plot.jl
Script que calcula o Recurrence Plot e suas quantidades

### basins.jl
Script que calcula as bacias de atração de um sistema.

### test-01.jl
Script que calcula o teste 01.


***NOTE***
Antes de utilizar os scripts recomenda-se usa o install.jl que irá instalar os pacotes necessários para a utilização dos cálculos.


### References:
1. A. Ribeiro, Mauricio; Jose M. Balthazar, Ângelo M. Tusset, Átila M. Bueno, and Hilson H. Daum. 2022. ‘MEMS-Based Atomic Force Microscope: Nonlinear Dynamics Analysis and Its Control’. Vibration Monitoring and Analysis - Recent Advances [Working Title]. IntechOpen. doi:10.5772/intechopen.108880.

2. A. Ribeiro, Mauricio; Jose M. Balthazar, Hilson H. Daum, Angelo M. Tusset (In Press). 'Nonlinear Dynamics Behavior and Its Control under Frequency-Varying Excitations for Energy Harvesting'. International Journal of Nonlinear Dynamics and Control

3. Mauricio A. Ribeiro, Angelo M. Tusset, Wagner B. Lenz, José M. Balthazar*, Grzegorz Litak; On non-linear dynamics behaviour of a fixed offshore platform for energy harvesting. 16th INTERNATIONAL CONFERENCE Dynamical Systems – Theory and Applications December 6-9, 2021 (On-line)
