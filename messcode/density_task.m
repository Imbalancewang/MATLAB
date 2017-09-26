density_map=zeros(10,8);
density
price_map=zeros(10,8);
for i=1:835
    for j=1:10
        for k=1:8
            if task_lat(i)>=(k-1)*0.2+22.4&task_lat(i)<22.4+0.2*k...
                    &task_long(i)>=112.6+(j-1)*0.2&task_long(i)<112.6+j*0.2
                density_map(j,k)=density_map(j,k)+1;
                price_map(j,k)=price_map(j,k)+price(i);
            end
        end
    end
end     
average_price_map=zeros(10,8);
for i=1:10
    for j=1:8
        if density_map(i,j)~=0
            average_price_map(i,j)=price_map(i,j)/density_map(i,j);
        end
    end
end
average_price_map

            