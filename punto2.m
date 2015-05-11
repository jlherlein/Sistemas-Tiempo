A=50;
C=500;
M=20;
K=0.5;
Ti=20;
Te=20;
deltaT=0.125;
deltaCg=0.8;
beta=C/M;
tau=C/(K*A);
iter=100000;
tf=deltaT*iter;
kh=0.1;
kv=1;
kc=500;
kp=M/(K*A);
v=25;
c1=0;
global m1;
m1=0;
m=0;
c=20;
constanteK=kv*kc*kh*kp;
betaLC=beta/(kv*kc*kh);
tauLC=tau/(1+constanteK);


r=kh*v; %r=ka*v y kh=ka;
tfinal=0;
e=r-c1;
i=0;
for i=1:iter
    funcion=@(t,y)(m1/betaLC)-((y-Te)/tauLC);
    tinic=tfinal;
    tfinal=tinic+deltaT;
    e=r-c1
    m=kc*e;
    m1=kv*m;
    [t,y]=metodoEuler(funcion,tinic,tfinal,c,iter);
    c=y(iter);
    c1=kh*c;
    a(i)=tfinal;
    b(i)=c;
end

plot(a,b);