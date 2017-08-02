function update(obj,~,handles,valstart,valend,valremove)
if ishandle(handles.figure1)
    val=randi([valstart valend],1,1);
    index=find(valremove==val,1);
    if isempty(index)
        set(handles.valdisp,'String',num2str(val));
    end
else
    stop(obj);
    delete(obj);
end
