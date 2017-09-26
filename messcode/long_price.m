figure(1);
for i=2:length(long)
    if judge(i)==1
        scatter(price(i),long(i),'g')
        hold on
    else
        scatter(price(i),long(i),'r')
    end
end
title('price-long');
grid on;