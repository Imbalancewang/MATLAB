%�����·ݵĶ�����ͬһ��ͼ�ϣ���������
%figure(1);
%time=1:1440;
%for i=1:28
%    plot(time,Febob(1+1440*(i-1):1440*i)');
%    hold on;
%end
%grid on;
%������ô��������ûʲô���𣡣���
figure(3)
time=1:1440;
for i=1:28
    boxplot(time,ob(:,i));
end
grid on;
if 0
title('2�·�ʱ��ͽ�������ϵͼ');
xlabel('ʱ���ᣨ��λ�����ӣ�');
ylabel('������(��λ����)');
end