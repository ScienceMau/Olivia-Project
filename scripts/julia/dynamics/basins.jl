using DynamicalSystems, SharedArrays, MAT, Statistics, OrdinaryDiffEq, ProgressMeter, DelimitedFiles

include("MathModel.jl")

############################################
# Function write text in screen
###########################################
function text_screen(text)
	for i in text
	print(i)		
	sleep(0.05)
	end
end


function scatter_attractors(attractors)
    for k in keys(attractors)
        x, y = columns(attractors[k])
        save_1(k, x, y)
    end
end

function save_1(k, k2, k3)
    writedlm("attractor_$(k)_.txt", [k2 k3])
    matwrite("attractor_$(k)_.mat", Dict(
        "x" => collect(k2),
        "y" => collect(k3),
        ))
end

function save_basins(k2)
    writedlm("_basins_.txt", k2)
    matwrite("_basins_.mat", Dict(
        "bsn" => collect(k2),
        ))
end


 u0     = [0.0; 0.0]
 diffeq = (alg = Vern9(), abstol = 1e-9, reltol = 1e-9)
 ds     = ContinuousDynamicalSystem(MathModel, u0, [0.01319]; diffeq)
 x0     = range(-0.9, 0.9, length = 600)
 y0     = range(-0.9, 0.9, length = 600)
 mapper = AttractorsViaRecurrences(ds, (x0, y0); sparse = false)
 basins, attractors = basins_of_attraction(mapper; show_progress = true)

scatter_attractors(attractors)
save_basins(basins)

text_screen("######################################\n")
text_screen("## Developed by:Mauricio A. Ribeiro ##\n")
text_screen("## Email:mau.ap.ribeiro@gmail.com   ##\n")
text_screen("######################################\n")

