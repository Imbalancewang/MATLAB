%load B;
%³É¹¦ÂÊ;
judge1=zeros(40320,1);
for i=1:40320
    if Fobpercent(i)>87.58
        judge1(i)=1;
    else
        judge1(i)=0;
    end
end
