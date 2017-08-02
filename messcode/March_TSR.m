%March plot
time=1:1440;
for i=1:31
    scatter(time,Marpercent(1+1440*(i-1):1440*i));
    hold on;
end
grid on;
title('March T-SR');
xlabel('T');
ylabel('SR');