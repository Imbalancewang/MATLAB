%clear;
%clc;
%load B;
%calculate February
%calculate Febob;
s=zeros(22,1);
for i=1:22
    s(i)=sum(Aprob(1+1440*(i-1):1440*i));
end
figure(1);  
t=1:22;
scatter(t,s);
title('The sum of every day in April');
xlabel('day');
ylabel('sum');
grid on;