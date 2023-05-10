using LaTeXStrings,DynamicalSystems, SharedArrays, MAT, Statistics, OrdinaryDiffEq, ProgressMeter, CairoMakie, DelimitedFiles

include("MathModel.jl")


function time_series_plot_fig(v1,v2)

	fig   = Figure(resolution = (1200, 800), fontsize = 28)
        plot1 = lines(v1,v2, color=:black, axis = (aspect = 1, xlabel = L"p", ylabel = L"K_c"))
	save("test-01_plot_.png", plot1)

end

function kmedian(x)

    s = length(x);
    if s[1]==1;
        x = x'
    end

    N = length(x);
    j = 1:N;
    t = 1:round(N/10);
    M = zeros(Int(round(N/10)));
    c = 0.0.+rand(100)*pi;

    p = Any[];
    q = Any[];
    kcor = zeros(100); 
      

    for k = 1:1:100
        p = cumsum(x.*cos.(j*c[k]))
        q = cumsum(x.*sin.(j*c[k]))
        for n =1:1:Int(round(N/10))
            M[n] = mean( (p[n+1:N]-p[1:N-n]).^2 + (q[n+1:N]-q[1:N-n]).^2 )-mean(x)^2*(1-cos(n*c[k]))/(1-cos(c[k]));
           
        end
        kcor[k] = cor(t, M)
    end
   
    km = mean(kcor);
    if km < 0
       km = 0;
    end
    if km > 1
       km = 1;
    end
    return km;
end



@inline @inbounds function bif(X, var)

    A=Float64[];
    B=Float64[];
    C=Float64[];
    a1=length(X);
    a2=Int(round(0.8*a1))
        for i=a2:1:(a1-1)
            if(X[i]>X[i-1] && X[i]>X[i+1])
                push!(A,X[i])		
            end
        end
    
        for k=1:1:length(A)
            push!(B,var)		
        end
    
    
        C=[A, B]
    
        return A
    end
    
    @showprogress 1 "Computing..." for i= 1:length(as)
    
        diffeq = (alg = Vern9(), abstol = 1e-9, reltol = 1e-9)
        ds   = ContinuousDynamicalSystem(MathModel,u0,[as[i]];diffeq)
        tr,t   = trajectory(ds,500; Δt = 0.01, Ttr = 200) 
               
        append!(X1,bif(tr[:,1],as[i]))

       T01[i] = kmedian(X1)

    end
    
    time_series_plot_fig(as,T01)
   
    matwrite("test-01_plot_.mat", Dict(
	    "01Test" => collect(T01),
	    "parameter" => collect(as),
    ))

text_screen("######################################\n")
text_screen("## Developed by:Mauricio A. Ribeiro ##\n")
text_screen("## Email:mau.ap.ribeiro@gmail.com   ##\n")
text_screen("######################################\n")


    
