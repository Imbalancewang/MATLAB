function p=poly_plus(a,b)
if nargin<2
    error('Not enough arguments');
end
a=a(:).';
b=b(:).';
la=length(a);
lb=length(b);
p=[zeros(1,lb-la) a]-[zeros(1,la-lb) b];
    