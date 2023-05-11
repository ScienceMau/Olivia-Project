using LaTeXStrings,DynamicalSystems, SharedArrays, MAT, Statistics, OrdinaryDiffEq, ProgressMeter, DelimitedFiles

include("MathModel.jl")

function text_screen(text)
	
	for i in text
	print(i)		
	sleep(0.05)
	end
end



function Temporal_Series(MM, u0,TIME1, as)
	
	@showprogress 1 "Computing..." for i= 1:1:length(as)
		diffeq = (reltol = 1e-9, abstol = 1e-9)
		ds   = ContinuousDynamicalSystem(MM,u0,[as[i]];diffeq)
		tr, t   = trajectory(ds, TIME1; Ttr=Int(round(0.9*TIME1)), Δt = 0.01 )
    	x=tr[:,1];
    	y=tr[:,2];
    	writedlm("time_series_$(i).txt", [x y])
    	matwrite("TS_$(as[i])_.mat", Dict(
		"A1" => collect(x),
		"A2" => collect(y),
  	 	))
	end
end


function Poincare_map(MM, u0,TIME1, as)
	
	@showprogress 1 "Computing..." for i= 1:1:length(as)
		diffeq = (reltol = 1e-9, abstol = 1e-9)
		ds   = ContinuousDynamicalSystem(MM,u0,[as[i]];diffeq)
		tr, t   = trajectory(ds, TIME1; Ttr=20000π, Δt = 2π)
   		x=tr[:,1];
    	y=tr[:,2];
		writedlm("Poincare_$(i).txt", [x y])
		matwrite("Poincare_map_$(as[i])_.mat", Dict(
			"A1" => collect(x),
			"A2" => collect(y),
  	 	))
	end
end

	as = [0.001201]
	u0 = [0.0, 0.0]
	TIME1 =  100000;

	Temporal_Series(MathModel, u0,TIME1, as)
	Poincare_map(MathModel, u0,TIME1, as)

text_screen("######################################\n")
text_screen("## Developed by:Mauricio A. Ribeiro ##\n")
text_screen("## Email:mau.ap.ribeiro@gmail.com   ##\n")
text_screen("######################################\n")