function y=passwordverifry(str)
y=false;
if ischar(str)
    y=~isempty(regexp(str,'\<[a-zA-Z]\w{5,15}\>','match'));
end
end
