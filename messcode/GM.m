%This is a predication model based on GM(1,1);
clear;
clc;
syms a b;
c=[a b]';
t1=2000;%the beginning year;
t2=2014;%the end year;
deltat=5;%the years you want to predict
A=[202 219 221 325 347 333 360 407 441 476 479 482 490 522 541];
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
%error
epsilon=A-G(1:t2-t1+1);
%relevant error
rerror=abs(epsilon)./A;
plot(T1,A,'ro',T2,G,'bx');
grid on
title('GM-predication');
xlabel('Year');
ylabel('Volume of trash');
legend('actual value','predicated value');