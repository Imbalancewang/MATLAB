%member_descend;
member_descend_distance=[member_descend(:,1) member_descend(:,2)];
[distance pos]=sort(member_descend_distance(:,1));
member_descend_distance_descend1=member_descend_distance(pos,1);
member_descend_distance_descend2=member_descend_distance(pos,2);
member_descend_distance_descend=[member_descend_distance_descend1 member_descend_distance_descend2];