%reckon of the biggest matrix;
%lat_long_distance;
task_limit_sum=zeros(length(task_lat),1);
for i=1:length(task_lat)
    for j=1:length(member_lat)
        if lat_long_distance(i,j)<15
            task_limit_sum(i)=task_limit_sum(i)+member_booked_task(j);
        end
    end
end

