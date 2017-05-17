%clear;
%clc;
%load B;
Aprfool=zeros(24,1);
for i=1:24
    Aprfool(i,1)=sum(Aprob(1+60*(i-1):60*i));
end
t=1:24;
plot(t,Aprfool');
title('4.1');
xlabel('time');
ylabel('vob');
grid on;