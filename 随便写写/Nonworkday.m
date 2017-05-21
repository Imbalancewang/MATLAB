%think about the march;
%3.4 3.5 3.11 3.12 3.18 3.19 3.25 3.26;
%The first data is 4321;
time=1:1440;
for i=1:4
    plot(time,Marob(4321+1440*(i-1)*7:5760+1440*(i-1)*7),time,Marob(5761+1440*(i-1)*7:7200+1440*(i-1)*7));
    hold on;
end
grid on
title('Nonworkday');
xlabel('time');
ylabel('vob');