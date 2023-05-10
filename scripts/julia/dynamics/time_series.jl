using LaTeXStrings, DynamicalSystems, SharedArrays, MAT, Statistics, OrdinaryDiffEq, ProgressMeter, CairoMakie, DelimitedFiles

include("MathModel.jl")

function text_screen(text)
	
	for i in text
	print(i)		
	sleep(0.05)
	end
end


function time_series_plot_fig(TIME, TR)

	fig = Figure(resolution = (1200, 800), fontsize = 28)
	ax1, = lines(fig[1:2,1], TR[:, 1], TR[:, 2], color=:black, axis = (aspect = 1, xlabel = L"x_1", ylabel = L"x_2"))
	ax1.title = "(a)"

	ax2, = lines(fig[1,2], TIME, TR[:, 1], color=:red, axis = (aspect = 1, xlabel = L"Time", ylabel = L"x_1"))
	ax2.title = "(b)"
	
	ax3, = lines(fig[2,2], TIME, TR[:, 2], color=:red, axis = (aspect = 1, xlabel = L"Time", ylabel = L"x_2"))
	ax3.title = "(c)"
	
	
	save("TIME_plot_.png", fig)

end
diffeq = (alg = Vern9(), abstol = 1e-9, reltol = 1e-9)
ds   = ContinuousDynamicalSystem(MathModel,u0,[0.002];diffeq)
tr,t   = trajectory(ds,500; Δt = 0.05, Ttr= 10)

time_series_plot_fig(t, tr)

x=tr[:,1]
y=tr[:,2]


writedlm("time_series.txt", [x y])
writedlm("time_.txt", t)

matwrite("TIME_SERIES_.mat", Dict(
	"X" => collect(x),
	"Y" => collect(y),
	"TIME"=>collect(t)
))

text_screen("######################################\n")
text_screen("## Developed by:Mauricio A. Ribeiro ##\n")
text_screen("## Email:mau.ap.ribeiro@gmail.com   ##\n")
text_screen("######################################\n")
