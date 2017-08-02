%Gray Model GM(1,1) not a predication model but a fitting model;
clc;
clear;
x0=[92.810 97.660 98.800 99.281 99.537 99.537 99.817 100.00];
%x0 is the original data you have to input;
n=length(x0);
lamda=x0(1:n-1)./x0(2:n);
%dispose of AGO;
x1=cumsum(x0);
for i=2:n
    z(i)=0.5*(x1(i)+x1(i-1));
    %calculate the neighbour value of average also the say the white value;
end
B=[-z(2:n)',ones(n-1,1)];
Y=x0(2:n)';
%calculate the coffecient of development and the gray working value;
u=inv(B'*B)*B'*Y;
forecast1=(x1(1)-u(2)./u(1)).*exp(-u(1).*([0:n-1]))+u(2)./u(1);
exchange=diff(forecast1);
%output the forecast of gray model;
forecast=[x0(1),exchange];
%calculate the error;
epsilon=x0-forecast;
%calculate the relative error;
delta=abs(epsilon./x0);
%calculate the error;
%method1
Q=mean(delta);
%method2
C=std(epsilon,1)/std(x0,1);
%method3
S1=std(x0,1);
S1_new=S1*0.6745;
temp_P=find(abs(epsilon-mean(epsilon))<S1_new);
P=length(temp_P)/n;
%plot
plot(1:n,x0,'ro','markersize',11);
hold on;
plot(1:n,forecast,'k-','LineWidth',2.5);
grid on;
axis tight;
xlabel('x');
ylabel('y');