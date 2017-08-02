function add_min_mul_div(hObject,eventdata,handles,operator)
hasOperator=getappdata(gcf,'hasOperator');
base=getappdata(gcf,'base');
exp=getappdata(gcf,'exp');
b=get(handles.display,'String');
num=str2val(b,base);
if hasOperator
    exp(end)=operator;
else
    exp=[exp num2str(num) operator];
    setappdata(gcf,'hasOperator',true);
end
setappdata(gcf,'showExpand',false);
setappdata(gcf,'isFun',false);
setappdata(gcf,'exp',exp);





