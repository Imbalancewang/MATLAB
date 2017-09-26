if 0
shallow1=find(member_booked_task==1);%517
shallow23=find(member_booked_task>1&member_booked_task<=3);%430
shallow36=find(member_booked_task>3&member_booked_task<=6);%432
shallow750=find(member_booked_task>7&member_booked_task<=50);%426
shallow50=find(member_booked_task>50);
scatter(unfinished_task_lat,unfinished_task_long,'r');
hold on;
scatter(member_lat(shallow1),member_long(shallow1),'b');
hold on;
scatter(member_lat(shallow23),member_long(shallow23),'c');
hold on;
scatter(member_lat(shallow36),member_long(shallow36),'m');
hold on;
scatter(member_lat(shallow750),member_long(shallow750),'g');
hold on;
scatter(member_lat(shallow50),member_long(shallow50),'y');
grid on;
end
shallow1=find(member_booked_task<10);
shallow2=find(member_booked_task>=10&member_booked_task<30);
shallow3=find(member_booked_task>=30);
scatter(unfinished_task_lat,unfinished_task_long,'r');
hold on;
scatter(member_lat(shallow1),member_long(shallow1),'g');
hold on;
scatter(member_lat(shallow2),member_long(shallow2),'b');
hold on;
scatter(member_lat(shallow3),member_long(shallow3),'k');
hold on;
grid on;



