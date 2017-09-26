figure(1);
for i=2:length(lat)
    if judge(i)==1
        scatter(price(i),lat(i),'g')
        hold on
    else
        scatter(price(i),lat(i),'r')
    end
end
title('price-lat');
grid on;