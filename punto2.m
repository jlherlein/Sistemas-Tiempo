format long;
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
iter=100;
tf=deltaT*iter;
kh=0.1;
kv=1;
kc=100;
kp=M/(K*A);
v=25;
c1=0;
m1=0;
m=0;
c=20;
constanteK=kv*kc*kh*kp;
betaLC=beta/(kv*kc*kh);
tauLC=tau/(1+constanteK);
r=kh*v; %r=ka*v y kh=ka;
tiempo=0;
e=r-c1;
funcion=@(m1,y)(m1/beta)-((y-Te)/tau);

for i=1:iter
    a(i)=tiempo;
    b(i)=c;
    e=r-c1
    m=kc*e;
    m1=kv*m;
    Cnuevo=c+deltaT*funcion(m1,c);
    c=Cnuevo;
    c1=kh*c;
   
    tiempo=tiempo+deltaT;
end
eehhloco=1/(1+constanteK)
plot(a,b);