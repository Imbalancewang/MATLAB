figure(1);
grid on
for i=2:length(judge)
    if judge(i)==1
        scatter(lat(i),long(i),'g');
        hold on;
    else
        scatter(lat(i),long(i),'r');
        hold on;
    end
end
