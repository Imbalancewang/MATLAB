r_number_distribution=zeros(40,835);
r_number_member=zeros(40,835);
%r_number_distribution=zeros(1,835);
%r_number_member=zeros(1,835);
for r=10:1:49
    k=1;
    for i=1:835
        for j=1:1877
            if lat_long_distance(i,j)<=r
                r_number_distribution(k,i)=member_booked_task(j)+r_number_distribution(k,i);
                r_number_member(k,i)=r_number_member(k,i)+1;
            end
        end
    end
    k=k+1;
end
if 0
r_number_member=r_number_member/835;
r_number_distribution=r_number_distribution/sum(member_booked_task);
r_distance=abs(r_number_member-r_number_distribution);
end