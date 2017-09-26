seq=find(judge==1);
r_number_distribution=zeros(60,length(seq));
r_number_member=zeros(60,length(seq));
for r=1:60;
    for i=1:length(seq)
        for j=1:1877
            if lat_long_distance(seq(i),j)<=r
                r_number_distribution(r,i)=member_booked_task(j)+r_number_distribution(r,i);
                r_number_member(r,i)=r_number_member(r,i)+1;
            end
        end
    end
end
r_number_member=r_number_member/length(seq);
r_number_distribution=r_number_distribution/sum(member_booked_task(seq));
non_zero=zeros(60,1);
for i=1:60
    for j=1:length(seq)
        if r_number_member(i,j)>0
            non_zero(i)=non_zero(i)+1;
        end
    end
end
matrix=zeros(60,length(seq));
for i=1:60
    for j=1:length(seq)
        if r_number_member(i,j)==0
            matrix(i,j)=1;
        else
            matrix(i,j)=r_number_member(i,j)/r_number_distribution(i,j);
        end
    end
end
perfect=zeros(60,length(seq));
for i=1:60
    for j=1:length(seq)
        if matrix(i,j)<1
            perfect(i,j)=1/matrix(i,j);
        else
            perfect(i,j)=matrix(i,j);
        end
    end
end
excellent=perfect-1;
square_sum=zeros(60,1);
for i=1:60
    for j=1:length(seq)
        square_sum(i)=square_sum(i)+excellent(i,j)*excellent(i,j);
    end
end
Q=sqrt(square_sum)./(non_zero-1);
cha=abs(diff(Q));
sequence=find(cha==min(cha))


