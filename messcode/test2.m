figure(1);
scatter(member_lat,member_long);
hold on;
a=find(price==65);
b=find(price==70);
c=find(price==75);
for i=1:length(a)
    scatter(task_lat(a(i)),task_long(a(i)),'r');
    hold on;
end
for i=1:length(b)
    scatter(task_lat(b(i)),task_long(b(i)),'g');
    hold on;
end
for i=1:length(c)
    scatter(task_lat(c(i)),task_long(c(i)),'m');
    hold on;
end
grid on;