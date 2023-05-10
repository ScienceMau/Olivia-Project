#####################################################
##  function for mathematical modeling
######################################################
@inline @inbounds function MathModel(u,par,t)

	######################
	## parameters
	#####################
    a     = 1.6;
    omega = 1.0;
    r     = 0.1;
    b     = 0.05;
    c     = 0.35;
    e    = 0.0001;
    p     = par[1];
    f0    = 0.2;
    d     = 4/27;
    beta  = 0.05;


	du1 = u[2];
 	du2 = -r*u[2]-b*u[1]-c*u[1]^3+(e/((a+u[1])^8))-(d/((a+u[1])^2))-(p*u[2]/((a+u[1])^3))+beta/((a+u[1])^4)+f0*cos(omega*t);
	
	return SVector{2}(du1, du2);
end


	as = range(0.0,0.2, length = 300)
	u0 = [0.0, 0.0]
	TIME1 =  15000;

	X1=Any[];
	X2=Any[];
	Lyap = SharedMatrix{Float64}(length(as),length(u0));
	T01 = SharedArray{Float64}(length(as));
