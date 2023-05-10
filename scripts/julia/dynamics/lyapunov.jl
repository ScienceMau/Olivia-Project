using LaTeXStrings,DynamicalSystems, SharedArrays, MAT, Statistics, OrdinaryDiffEq, ProgressMeter, Plots, DelimitedFiles

include("MathModel.jl")

function text_screen(text)
	
	for i in text
	print(i)		
	sleep(0.05)
	end
end


######################################
# Function Plot the results in .png
######################################

function RESULTS_PLOT(as, ly, A, B)

	plot_font = "Computer Modern"
	default(fontfamily=plot_font, linewidth=2, framestyle=:box, label=nothing, grid=true)
	scalefontsizes(1.8)
	p1 = scatter(A,B,marker=1.5, color ="black", xlabel = L"$p$", ylabel = L"$x_1$", markersize = 0.2, legend = false,framestyle=:box)
	p2 = plot(as,ly, xlabel = L"p", linewidth=2, ylabel=L"$\lambda_i$", legend = false,framestyle=:box)
	plot(p1,p2, layout = grid(2,1),size =(1200,800))

	savefig("Lyapunov_and_bifurcation.png")
end


@inline @inbounds function bif(X, var)

A=Float64[];
B=Float64[];
C=Float64[];
a1=length(X);
a2=Int(round(0.7*a1))
	for i=a2:1:(a1-1)
		if(X[i]>X[i-1] && X[i]>X[i+1])
			push!(A,X[i])		
		end
	end

	for k=1:1:length(A)
		push!(B,var)		
	end


	C=[A, B]

	return C
end

@showprogress 1 "Computing..." for i= 1:length(as)

	diffeq = (alg = Vern9(), abstol = 1e-9, reltol = 1e-9)
	ds   = ContinuousDynamicalSystem(MathModel,u0,[as[i]];diffeq)
	tr,t   = trajectory(ds,TIME1; Δt = 0.01, Ttr = 500)
	Lyap[i,:] = lyapunovspectrum(ds,TIME1; Δt=0.01, Ttr=500);
	append!(X1,bif(tr[:,1],as[i]))
end

##################################################
#  Organize the arrays for Diagrama Bifurcation
##################################################



A=Any[];
B=Any[];

for k=1:1:Int(length(X1)/2)

	append!(A,X1[2*k])
	append!(B,X1[2*k-1])
end

###########################
# Figure and .mat output
###########################

writedlm("lyapunov_spectrum.txt", Lyap)
writedlm("parameter.txt", as')
writedlm("bifurcation.txt", [A B])


RESULTS_PLOT(as, Lyap[:,1], A[:,1], B[:,1])


matwrite("Lyapunov_bifurcation_.mat", Dict(
	"A1" => collect(A),
	"A2" => collect(B),
	"Ly" => collect(Lyap),
	"parameter" => collect(as),
))

text_screen("######################################\n")
text_screen("## Developed by:Mauricio A. Ribeiro ##\n")
text_screen("## Email:mau.ap.ribeiro@gmail.com   ##\n")
text_screen("######################################\n")
