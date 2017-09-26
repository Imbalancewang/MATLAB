standard_X=[standard_task_lat standard_task_long standard_task_limit_sum ... 
    standard_tasktomember_min_distance standard_numberofmember_distance_it15];
standard_Y=standard_price;
[R,P]=corrcoef([standard_Y,standard_X]);
md1=LinearModel.fit(standard_X,standard_Y);
model2='poly22222';
md2=LinearModel.fit(standard_X,standard_Y);
model3='poly33333';
md3=LinearModel.fit(standard_X,standard_Y);