restandard_X=[restandard_retask_lat restandard_retask_long restandard_retask_limit_sum ... 
    restandard_retasktomember_min_distance restandard_renumberofmember_distance_it15];
restandard_Y=restandard_reprice;
sign=500;
[Rx,Px]=corrcoef([restandard_Y,restandard_X(:,1:4)]);
mdd1=LinearModel.stepwise([restandard_X(1:sign,1:4)],restandard_Y(1:sign));
moddel2='poly2222';
mdd2=LinearModel.stepwise([restandard_X(1:sign,1:4)],restandard_Y(1:sign),moddel2);
moddel3='poly3333';
mdd3=LinearModel.stepwise([restandard_X(1:sign,1:4)],restandard_Y(1:sign),moddel3);
mdd2
mdd3