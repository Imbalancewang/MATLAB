%5 data;
seq=find(price<=75);
standard_5_task_lat=standard_task_lat(seq);
standard_5_task_long=standard_task_long(seq);
standard_5_tasktomember_min_distance=standard(tasktomember_min_distance(seq));
standard_5_r_number_distribution=standard(r_number_distribution(34,seq))';
standard_5_r_number_member=standard(r_number_distribution(34,seq))';
standard_5_X=[standard_5_task_lat standard_5_task_long standard_5_tasktomember_min_distance...
    standard_5_r_number_distribution standard_5_r_number_member]
standard_5_Y=standard(price(seq));
sign=500;
[R5,P5]=corrcoef([standard_5_Y(1:sign),standard_5_X(1:sign,:)]);
mmd1=LinearModel.fit([standard_5_X(1:sign,1:5)],standard_5_Y(1:sign));
model2='poly22222';
mmd2=LinearModel.fit([standard_5_X(1:sign,1:5)],standard_5_Y(1:sign),model2);
model3='poly33333';
mmd3=LinearModel.fit([standard_5_X(1:sign,1:5)],standard_5_Y(1:sign),model3);

