clear;
clc;
%Y is the number of population every year;
%Assume 30 years of population ;
Y=[33815 33981 34004 34165 34212 34327 34344 34458 34498 34476 34483 34488 34513 34497 34511 34520 34507 34509 34521 34513 34515 34517 34519 34519 34521 34521 34523 34523 34525 34527];
Y=Y';
T=[1:30];
%linear dispose;
for t=1:30
    x(t)=exp(-t);
    y(t)=1/Y(t,1);
end
%calculate the regression factor;
c=zeros(30,1)+1;
X=[c,x'];
B=inv(X'*X)*X'*y';
for i=1:30
    %calculate the regression fitting factor;
    z(i)=B(1,1)+B(2,1)*x(i);
    %calculate the difference;
    s(i)=y(i)-sum(y)/30;
    %calculate the error;
    w(i)=z(i)-y(i);
end
%calculate the square of the difference;
S=s*s';
%calculate the square of the the error;
Q=w*w';
%calculate the square of the regression;
U=S-Q;
%calculate the test vaule;
F=28*U/Q;%why is 28;
%calculate the fitting value of non-linear regression model;
for j=1:30
    Y(j)=1/(B(1,1)+B(2,1)*exp(-j));
end
plot(T,Y);