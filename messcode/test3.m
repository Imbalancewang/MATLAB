min_distance=zeros(835,1);
for i=1:835
    min_distance(i)=min(lat_long_distance(i,:));
end
min_distance_price=[min_distance price];
scatter(min_distance,price);
grid on;
