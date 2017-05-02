%the equation_solve of squrae
function [x1, x2]=equation_solve(a,b,c)
a=1;b=2;c=3;
delt=b*b-4*a*c;
if delt<0
    disp('There is on solutions of the equation!');
elseif delt==0
    'There is only one answer!';
    x1=(-a+sqrt(delt))/2;
    ans=x1;
else
    'There is two answers';
    x1=(-a+sqrt(delt))/2;
    x2=(-a-sqrt(delt))/2;
    ans=[x1 x2];
end
