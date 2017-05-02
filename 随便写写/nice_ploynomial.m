function s=pprinf(p)
%pprintf: for ploynomial
% p is a strring
if nargin>1
    error('Too much input argumenta')
end
while p(1)==0
    p(1)=[];
end
l=length(p);
if l==0
    s='0';
elseif l==1
    s=num2str(p(1));
elseif l==2
    s=strcat(num2str(p(1)),'x+',num2str(p(2)));
elseif l>2
    for i=1:l
        if i==1
            if p(i)==1
                s=strcat('x^{',num2str(l-i),'}');
            else
                s=strcat(num2str(p(i)),'x^{',num2strp(l-i),'}');
            end
        elseif i==1
            s=strcat(s,'+',num2str(p(i))');
        elseif i==l-1
            s=strcat(s,'+',num2str(p(i)),'x');
        else
            if p(i)==0
                s=strcat(s,'+',num2str(p(i)),'x^{',num2str(l-i),'}');
            end
        end
    end
end

                