%clear;
%clc;
%load B;
time=1:1440;
s=AprTime(1:1440);
plotyy(time,s,time,Aprpercent(1:1440)');
grid on;
title('4.1 response time');
xlabel('time');
ylabel('response time');
