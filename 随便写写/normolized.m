%normolized
%clear all;
%clc;
%load B;
ave=mean(Febpercent);
var=variance(Febpercent);
std=sqrt(var);
for i=1:length(Febpercent)
    vob(i)=(Febpercent(i)-ave)/std;
end
time=1:1440;
for i=1:28
    plot(time,vob(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
title('��׼����2�·�ʱ��ͳɹ��ʹ�ϵͼ');
xlabel('ʱ����');
ylabel('��׼����ĳɹ���');