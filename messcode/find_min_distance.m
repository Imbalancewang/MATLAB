%find the minimum distance of task towards member;
tasktomember_min_distance=zeros(length(task_lat),1);
for i=1:length(task_lat)
    tasktomember_min_distance(i)=min(lat_long_distance(i,:));
end
