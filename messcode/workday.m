%march except 3.4 3.5 3.11 3.12 3.18 3.19 3.25 3.26;
%split 2 parts
time=1:1440;
for i=1:3
    plot(time,Marob(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
hold on;
for i=1:3
    for j=1:5
        plot(time,Marob(7201+1440*(j-1)+i*1440*7:8640+1440*(j-1)+i*1440*7));
        hold on;
    end
end
grid on;
title('workday');
xlabel('time');
ylabel('vob')