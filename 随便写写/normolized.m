%normolized
%clear all;
%clc;
%load B;
ave=mean(Febob);
var=variance(Febob);
std=sqrt(var);
for i=1:length(Febob)
    vob(i)=(Febob(i)-ave)/std;
end
time=1:1440;
for i=1:28
    plot(time,vob(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
title('��׼����2�·�ʱ��ͽ�������ϵͼ');
xlabel('ʱ����');
ylabel('��׼����Ľ�����');