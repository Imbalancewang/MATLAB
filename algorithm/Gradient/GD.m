%written by matthew
%icewong
%Batch Gradient Descent
x=linspace(-2,2,40)';
y=2*x+rand(length(x),1);
alpha0=0;
theta=zeros(2,1);
k=0;%iteration;
for k=1:100
    alpha=1/k+alpha0;
    error = x*theta(2)+theta(1)-y;
    mse = norm(error);
    delta_theta = error'*x;
    delta_theta_norm = norm(delta_theta);
    theta(1) = theta(1)-alpha*sum(error);
    theta(2) = theta(2)-alpha*delta_theta;
end
if 0
    if delta_theta_norm<1e-6
        scatter(x,y);
        hold on;
        plot(x,polyval(theta,x));
        break;
    end
end
    