%load B;
Aprpercent=zeros(length(Aprvalue),1);
for i=1:length(Aprvalue)
    Aprpercent(i,1)=str2num(Aprvalue{i}(1:end-1));
end
