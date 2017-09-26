%unfinish && finish;
%reckon of judge;
k=1;
p=1;
for i=1:835
    if judge(i)==0
        unfinished_task_lat(k)=task_lat(i);
        unfinished_task_long(k)=task_long(i);
        k=k+1;
    else
        finished_task_lat(p)=task_lat(i);
        finished_task_long(p)=task_long(i);
        p=p+1;
    end
end
figure(1);
scatter(finished_task_lat,finished_task_long,'b');
hold on;
scatter(unfinished_task_lat,unfinished_task_long,'r');
grid on;