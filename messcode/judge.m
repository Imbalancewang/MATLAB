%load B;
vob=zeros(31,1);
vob1=zeros(31,1);
Marpercent1=Marpercent/100;
Marob1=Marob.*Marpercent1;
for i=1:31
    vob(i)=sum(Marob1(1+1440*(i-1):1440*i));
    vob1(i)=sum(Marob(1+1440*(i-1):1440*i));
end
day=1:31;
scatter(day,vob);
hold on;
scatter(day,vob1);
grid on;
