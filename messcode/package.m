unfinished=find(judge==0);
dispose_distance=100*eye(835)+task_distance;
seq_number=zeros(length(unfinished),15);
for i=1:length(unfinished)
     x=find(dispose_distance(i,i:end)<1.8);
     l=length(x);
     seq_number(i,3:l+2)=x;
     seq_number(i,1)=length(x);
     if seq_number(i,1)~=0
         seq_number(i,2)=(sum(price(x))+price(i))*0.9543;
     else
         seq_number(i,2)=price(i);
     end
end

        
        
    