%plot February change rate and response time.
time=1:1440;
%figure(1);
%for i=1:28
%    plotyy(time,FebTime(1+1440*(i-1):1440*i),time,Febpercent(1+1440*(i-1):1440*i));
%    hold on;
%end
%grid on;
%figure(2);
%for i=1:28
%    plot(time,Febpercent(1+1440*(i-1):1440*i));
%    hold on;
%end
%grid on;
figure(3);
for i=1:28
    plot(time,FebTime(1+1440*(i-1):1440*i));
    hold on;
end
grid on;