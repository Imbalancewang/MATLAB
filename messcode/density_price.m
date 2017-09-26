Density_price=zeros(795,1);
seq=(find(price<=75));
for i=1:795
    for j=1:10
        for k=1:8
            if task_lat(seq(i))>=(k-1)*0.2+22.4&task_lat(seq(i))<22.4+0.2*k...
                    &task_long(seq(i))>=112.6+(j-1)*0.2&task_long(seq(i))<112.6+j*0.2
                Density_price(i)=density_map(j,k);
            end
        end
    end
end