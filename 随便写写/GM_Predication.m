%This is a predication model based on GM(1,1);
clear;
clc;
syms a b;
c=[a b]';
t1=1999;%the beginning year;
t2=2008;%the end year;
deltat=10;%the years you want to predict
A=[89677 99215 109655 120333 135823 159887 182321 209407 246619 300670];
%A=A';
%A is the original data;
B=cumsum(A);
n=length(A);
for i=1:(n-1)
    C(i)=(B(i)+B(i+1))/2;
end
D=A;
D(1)=[];
D=D';
E=[-C;ones(1,n-1)];
c=inv(E*E')*E*D;
c=c';
a=c(1);b=c(2);
%predict the series datas;
F=[];
F(1)=A(1);
for i=2:(n+deltat)
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a;
end
G=[];G(1)=A(1);
for i=2:(n+deltat)
    G(i)=F(i)-F(i-1);
end
T1=t1:t2;
T2=t1:t2+deltat;
G
plot(T1,A,'ro',T2,G);