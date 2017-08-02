%load B
judge2=zeros(40320,1);
for i=1:40320
    if FobTime(i)>87.58
        judge2(i)=1;
    else
        judge2(i)=0;
    end
end
