%pick the datas;
k=1;
for i=1:length(price)
    if price(i)<=75.001
        reprice(k)=price(i);
        retask_lat(k)=task_lat(i);
        retask_long(k)=task_long(i);
        relat_long_distance(k,:)=lat_long_distance(i,:);
        k=k+1;
    end
end
renumberofmember_distance_it15=zeros(length(retask_lat),1);
for i=1:length(retask_lat)
    renumberofmember_distance_it15(i)=length(find(lat_long_distance(i,:)<15));
end
%reckon of the biggest matrix;
%lat_long_distance;
retask_limit_sum=zeros(length(retask_lat),1);
for i=1:length(retask_lat)
    for j=1:length(member_lat)
        if relat_long_distance(i,j)<15
            retask_limit_sum(i)=retask_limit_sum(i)+member_booked_task(j);
        end
    end
end
retasktomember_min_distance=zeros(length(retask_lat));
for i=1:length(retask_lat)
    retasktomember_min_distance(i)=min(relat_long_distance(i,:));
end





