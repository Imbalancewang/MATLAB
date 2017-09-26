renumberofmember_distance_it15=zeros(length(retask_lat),1);
for i=1:length(retask_lat)
    renumberofmember_distance_it15(i)=length(find(lat_long_distance(i,:)<15));
end