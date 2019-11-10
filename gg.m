%App
%A
x=randn(1000,1); %%géné 1000 éch
 y=hist(x,50)
%clear all
close all
clc
%App
%A
x=randn(1000,1); %%géné 1000 éch
 y=hist(x,50)
 plot(y)
z=histnorm(x,50,1);
hold on;
 
 X=[-3:0.1:3]
fx=(1/sqrt(2*pi))*exp((-0.5)*X.^2) %densité dproba d'une loi normale
plot(X,fx,'r')
 
m=mean(x) %%égale à moy statistique =x*px 

u=std(x) %%%ecart type
hold off;
%Y=sort(x)

%stairs(Y,[1:n]/n)
hold on;
ms=mean(Y)
um=std(Y)

t=normcdf(X,ms,um) 
plot(X,t,'r')
figure(4);
%%6
p=0.3
N=100
b=binornd(100,p,100,1) %%a la place de randn
Y=sort(b)
n=length(b)
stairs(Y,[1:n]/n)
hold on;
mb=mean(b)
ub=std(b)
s=[1:100];
y=binocdf(s,N,p)   %binocdf(k,N,p)
plot(s,y,'g')
