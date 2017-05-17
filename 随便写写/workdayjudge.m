%clear;
%clc;
%load B;
%先考虑2.1~2.7这七天中有工作日和非工作日，考虑它们的图像。
time=1:1440;
%一天一共1440分钟
figure(1);
plot(time,Marob(1:1440),time,Marob(1441:2880),time,Marob((1440*2+1):(1440*3)),time,Marob((1440*3+1):(1440*4)),time,Marob((1440*4+1):(1440*5)),time,Marob((1440*5+1):(1440*6)),time,Marob((1440*6+1):(1440*7)));
title('3.1~3.7');
legend('3.1','3.2','3.3','3.4','3.5','3.6','3.7');
%march
figure(2);
plot(time,Aprob(1:1440),time,Aprob(1441:2880),time,Aprob((1440*2+1):(1440*3)),time,Aprob((1440*3+1):(1440*4)),time,Aprob((1440*4+1):(1440*5)),time,Aprob((1440*5+1):(1440*6)),time,Aprob((1440*6+1):(1440*7)));
title('4.1~4.7');
legend('4.1','4.2','4.3','4.4','4.5','4.6','4.7');
%April
figure(3);
plot(time,Febob(1:1440),time,Febob(1441:2880),time,Febob((1440*2+1):(1440*3)),time,Febob((1440*3+1):(1440*4)),time,Febob((1440*4+1):(1440*5)),time,Febob((1440*5+1):(1440*6)),time,Febob((1440*6+1):(1440*7)));
title('2.1~2.7');
legend('2.1','2.2','2.3','2.4','2.5','2.6','2.7');
grid on;