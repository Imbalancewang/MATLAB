numberofmember_distance_it15=zeros(length(task_lat),1);
for i=1:835
    numberofmember_distance_it15(i)=length(find(lat_long_distance(i,:)<15));
end
