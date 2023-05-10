#####################################################
##  function for mathematical modeling
######################################################
@inline @inbounds function MathModel(u,par,t)



	######################
	## parameters
	#####################

zeta   = 0.1;
eta   = 0.05;
theta = 0.35;
a     = 1.6;
a1    = 4.0/27.0;
b     = par[1];
c     = 0.00001;
omega = 1.0;
f0    = 0.2;
	
	
	######################
	## Equation array u[]
	####################

	du1 = u[2];
	du2 = -zeta*u[1]-eta*u[1]-theta*u[1]-a1/(a+u[1])^2-(b*u[2]/(a+u[1])^3)+c/(a+u[1])^8+f0*cos(omega*t);


	################
	## Return function 
	#################
	return SVector{2}(du1, du2);
end


	as = range(0.0,0.0001, length = 300)
	u0 = [0.0, 0.0]
	TIME1 =  1500;

	X1=Any[];
	X2=Any[];
	Lyap = SharedMatrix{Float64}(length(as),length(u0));
	T01 = SharedArray{Float64}(length(as));

