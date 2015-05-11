%funcion=funcion, ti=temperatura inicial
%tf=temp final, xi=punto inicial, iter=cantidad de iteraciones
function[t,y]=metodoEuler(funcion,ti,tf,y0,iter)
    h=(tf-ti)/iter;
    t=ti:h:tf;
    y(1)=y0;
    for i=1:iter
        %y(i+1)=y(i)+h*feval(f,deltaCg,beta,t(i),Te,tau);
        y(i+1)=y(i)+h*funcion(t(i),y(i));
    end
end