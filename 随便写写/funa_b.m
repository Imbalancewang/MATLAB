function funa_b(hObject,eventdata,handles,expStr)
base=getappdata(gcf,'base');
setappdata(gcf,'showExpand',false);
setappdata(gcf,'isFun',true);
b=get(handles.display,'String');
num=str2val(b,base);
setappdata(gcf,'exp',sprintf(expStr,floor(num)));