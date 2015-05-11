A=500;
C=25;
M=2.5;
K=0.5;
Te=20;
Ti=20;
global deltaT deltaCg beta tau Te
deltaT=0.125;
deltaCg=0.8;
beta=C/M;
tau=C/(K*A);
iter=10;
tf=deltaT*iter;
funcion=@(t,y)(deltaCg/beta)-((y-Te)/tau);

[a,b]=metodoEuler(funcion,0,tf,Ti,iter);
plot(a,b);