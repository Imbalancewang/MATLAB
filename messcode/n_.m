function x=op(a)
    s=qp(a)+ip(a);
    s
end
function y=qp(x)
    y=x*2;
end
function u=ip(x)
    u=x^2;
end

