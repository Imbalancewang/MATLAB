%�����·ݵĶ�����ͬһ��ͼ�ϣ���������
%figure(1);
%time=1:1440;
%for i=1:28
%    plot(time,Febob(1+1440*(i-1):1440*i)');
%    hold on;
%end
%grid on;
%������ô��������ûʲô���𣡣���
figure(2)
time=1:1440;
for i=1:28
    plot(time,Febpercent(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
title('2�·�ʱ��ͳɹ��ʹ�ϵͼ');
xlabel('ʱ���ᣨ��λ�����ӣ�');
ylabel('�ɹ��ʣ��ٷ�֮��');