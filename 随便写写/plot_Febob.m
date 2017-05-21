%将二月份的都花在同一张图上！！？？？
%figure(1);
%time=1:1440;
%for i=1:28
%    plot(time,Febob(1+1440*(i-1):1440*i)');
%    hold on;
%end
%grid on;
%好像这么多条曲线没什么区别！！！
figure(1)
time=1:1440;
for i=1:28
    plot(time,Febob(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
title('2月份时间和交易量关系图');
xlabel('时间轴（单位：分钟）');
ylabel('交易量(单位：笔)');

