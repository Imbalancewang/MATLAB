function sigma=variance(X)
    len=length(X);
    if len==1
        sigma=0;
    else
        average=mean(X);
        s=0;
        for i=1:len
            s=s+(X(i)-average)^2;
        end
        sigma=s/(len-1);
    end
end
