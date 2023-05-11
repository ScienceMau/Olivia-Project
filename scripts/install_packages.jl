using Pkg;
prog = ["LaTeXStrings","DynamicalSystems", "SharedArrays", "MAT", "Statistics", "OrdinaryDiffEq", "ProgressMeter", "CairoMakie", "DelimitedFiles"];
for i in prog
    Pkg.add(i)
end
