%load B;
Marpercent=zeros(length(Marvalue),1);
for i=1:length(Marvalue)
    Marpercent(i,1)=str2num(Marvalue{i}(1:end-1));
end
