pp=num2str(standard_descend(:,1));
%boxplot(standard_descend(:,2),pp);
ppp=standard_descend(:,1);%price
pppp=standard_descend(:,2);%distance
for i=1:10
    o=find(pppp==max(pppp));
    ppp(o)=[];
    pppp(o)=[];
    o
end
boxplot(pppp,num2str(ppp));
grid on;