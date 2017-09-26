standard_X3=[standard_task_limit_sum standard_tasktomember_min_distance standard_numberofmember_distance_it15];
standard_Y3=standard_price;
[R3,P3]=corrcoef([standard_Y3,standard_X3]);
mmd1=LinearModel.fit(standard_X3,standard_Y);
model2='poly222';
mmd2=LinearModel.fit(standard_X3,standard_Y,model2);
model3='poly333';
mmd3=LinearModel.fit(standard_X3,standard_Y,model3);
