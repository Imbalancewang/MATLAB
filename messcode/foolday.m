%clear;
%clc;
%load B;
if 0
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
end
%normolize
monday=Febob(1:1440);
mu=mean(monday);
time=1:1440;
s=0;
for i=1:1440
    s=s+(monday(i)-mu)^2
end
sigma=sqrt(s/1339);
for i=1:1440
   tuesday(i)=(monday(i)-mu)/sigma;
end
scatter(time,tuesday);
grid on;
title('Normolize');
xlabel('time');
ylabel('von-normol');