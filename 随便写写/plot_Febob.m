%将二月份的都花在同一张图上！！？？？
figure(1);
time=1:1440;
for i=1:28
    plot(time,Febob(1+1440*(i-1):1440*i)');
    hold on;
end
grid on;
%好像这么多条曲线没什么区别！！！