%load;
seq=find(price<=75);
w=1.05;
%going to find the true lat nad long and min_distance;
true_density_price=Density_price;
true_task_lat=w*task_lat(seq);
true_task_long=w*task_long(seq);
true_tasktomember_min_distance=tasktomember_min_distance(seq);
true_price=price(seq);
standard_true_density_price=standard(true_density_price);
standard_true_price=standard(true_price);
standard_true_task_lat=standard(true_task_lat);
standard_true_task_long=standard(true_task_long);
standard_true_tasktomember_min_distance=standard(true_tasktomember_min_distance);
standard_true_r31_distribution=standard(r_number_distribution(34,seq))';
standard_true_r31_member=standard(r_number_member(34,seq))';
standard_true_X=[standard_true_task_lat standard_true_task_long standard_true_density_price standard_true_r31_distribution...
    standard_true_tasktomember_min_distance standard_true_r31_member];
standard_true_Y=standard_true_price;
sign=500;
[RR,PP]=corrcoef([standard_true_Y,standard_true_X]);
model1='poly111111'
mmdd1=LinearModel.stepwise(standard_true_X(1:sign,1:6),standard_true_Y(1:sign),model1);
model2='poly222222';
mmdd2=LinearModel.stepwise([standard_true_X(1:sign,1:6)],standard_true_Y(1:sign),model2);
model3='poly333333';
mmdd3=LinearModel.stepwise(standard_true_X(1:sign,1:6),standard_true_Y(1:sign),model3);
%calculate
predict_price=abs(mmd2.predict(standard_true_X(501:end,1:6)));
pprice=standard_price(seq);
error=predict_price-pprice(501:end);