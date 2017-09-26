standard_price_member=[price standard_member];
[price pos]=sort(standard_price_member(:,1));
standard_member_descend1=standard_price_member(pos,1);
standard_member_descend2=standard_price_member(pos,2);
standard_member_descend=[standard_member_descend1 standard_member_descend2];