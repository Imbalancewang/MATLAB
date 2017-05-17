%load B;
Febpercent=zeros(length(Febvalue),1);
for i=1:length(Febvalue)
    Febpercent(i,1)=str2num(Febvalue{i}(1:end-1));
end
