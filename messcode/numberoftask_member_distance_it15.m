numberoftask_distance_it15=zeros(length(member_lat),1);
for i=1:length(member_lat)
    numberoftask_distance_it15(i)=length(find(lat_long_distance(:,i)<15));
end

