%written by matthewang;
function varargout = calculate(varargin)
% CALCULATE MATLAB code for calculate.fig
%      CALCULATE, by itself, creates a new CALCULATE or raises the existing
%      singleton*.
%
%      H = CALCULATE returns the handle to a new CALCULATE or the handle to
%      the existing singleton*.
%
%      CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATE.M with the given input arguments.
%
%      CALCULATE('Property','Value',...) creates a new CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculate

% Last Modified by GUIDE v2.5 13-Oct-2016 18:07:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @calculate_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculate is made visible.
function calculate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculate (see VARARGIN)

% Choose default command line output for calculate
handles.output = hObject;
warning off all;
% Update handles structure
%reset(hObject,eventdata,handles)
guidata(hObject, handles);

% UIWAIT makes calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display as text
%        str2double(get(hObject,'String')) returns contents of display as a double


% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in numa.
function numa_Callback(hObject, eventdata, handles)
% hObject    handle to numa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'A');

% --- Executes on button press in numb.
function numb_Callback(hObject, eventdata, handles)
% hObject    handle to numb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'B');

% --- Executes on button press in and.
function and_Callback(hObject, eventdata, handles)
% hObject    handle to and (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funa_b(hObject,eventdata,handles,'bitand(%g,)');

% --- Executes on button press in dc.
function dc_Callback(hObject, eventdata, handles)
% hObject    handle to dc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.secndf,'visble','on','String','M-0');
set(handles.radiobutton1,'enable','off');
set(handles.radiobutton2,'enable','off');
set(handles.radiobutton3,'enable','off');
set(handles.jinzhi,'SelectedObject',handles.radiobutton4);
h_all=[handles.num0 handles.num1 handles.num2 handles.num3 handles.num4 ...
    handles.num5 handles.num6 handles.num7 handles.num8 handles.num9 ...
    handles.e_val handles.pi_val handles.dot];
set(h_all,'enable','on');
a_f=[handles.numa handles.numb handles.numc handles.numd handles.nume handles.numf];
set(a_f,'enable','off');
set(handles.display,'String','please input datas:');
reset(hObject,eventdata,handles);



% --- Executes on button press in numc.
function numc_Callback(hObject, eventdata, handles)
% hObject    handle to numc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'C');

% --- Executes on button press in numd.
function numd_Callback(hObject, eventdata, handles)
% hObject    handle to numd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'D');

% --- Executes on button press in or.
function or_Callback(hObject, eventdata, handles)
% hObject    handle to or (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funa_b(hObject,eventdata,handles,'bitor(%g,)');

% --- Executes on button press in m_add.
function m_add_Callback(hObject, eventdata, handles)
% hObject    handle to m_add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
showExpand=getappdata(gcf,'showExpand');
str=get(handles.display,'String');
if showExpand
    handles.data=[handles.data str2double(str)];
    set(handles.secndf,'String',['M-' num2str(length(handles.datas))]);
    guidata(hObject,handles);
    setappdata(gcf,'showExpand',false);
end



% --- Executes on button press in nume.
function nume_Callback(hObject, eventdata, handles)
% hObject    handle to nume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'E');

% --- Executes on button press in numf.
function numf_Callback(hObject, eventdata, handles)
% hObject    handle to numf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num16(hObject,eventdata,handles,'F');

% --- Executes on button press in not.
function not_Callback(hObject, eventdata, handles)
% hObject    handle to not (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funa_b(hObject,eventdata,handles,'bitnot(%g,)');

% --- Executes on button press in e_val.
function e_val_Callback(hObject, eventdata, handles)
% hObject    handle to e_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.display,'String','2.718281828');
setappdata(gcf,'isDecimal',true);
setappdata(gcf,'showExpand',false);
setappdata(gcf,'hasOperator',false);

% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
isFun=getappdata(gcf,'isFun');
hasOperator=getappdata(gcf,'hasOperator');
base=getappdata(gcf,'base');
exp=getappdata(gcf,'exp');
b=get(handles.display,'String');
num=str2val(b,base);
if ~isFun
    if hasOperator
        exp(end)='';
    else
        exp=[exp sprintf('(%g)',num)];
    end
else
    exp=[exp sprintf('(%g)',floor(num))];
    setappdata(gcf,'isFun',false);
end
try
    res=eval(exp);
catch
    if base == uint8(10)
        set(handles.display,'String','0.');
    else
        set(handles.display,'String','0');
    end
    setappdata(gcf,'showExpand',false);
    setappdata(gcf,'exp','');
    return ;
end
c=val2str(res,base);
setappdata(gcf,'showExpand',false);
set(handles.secndf,'Visble','off');%.....................................
setappdata(gcf,'exp','');
set(handles.display,'String',c);
% --- Executes on button press in mod.
function mod_Callback(hObject, eventdata, handles)
% hObject    handle to mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funa_b(hObject,eventdata,handles,'mod(%g,)');

% --- Executes on button press in xor.
function xor_Callback(hObject, eventdata, handles)
% hObject    handle to xor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funa_b(hObject,eventdata,handles,'bitxor(%g,)');

% --- Executes on button press in p_val.
function p_val_Callback(hObject, eventdata, handles)
% hObject    handle to p_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.display,'String','3,14159265358');
setappdata(gcf,'isDecimal',true);
setappdata(gcf,'showExpand',false);
setappdata(gcf,'hasOPerator',false);

% --- Executes on button press in sinx.
function sinx_Callback(hObject, eventdata, handles)
% hObject    handle to sinx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cosx.
function cosx_Callback(hObject, eventdata, handles)
% hObject    handle to cosx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tanx.
function tanx_Callback(hObject, eventdata, handles)
% hObject    handle to tanx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in xy.
function xy_Callback(hObject, eventdata, handles)
% hObject    handle to xy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
isSecFun=getappdata(hObject,eventdata,handles);
hasOperator=getappdata(gcf,'hasOperator');
base=getappdata(gcf,'base');
exp=getappdata(gcf,'exp');
b=get(handles.display,'String');
num=str2val(b,base);
if ~isSecFun
    if hasOperator
        exp(end)='';
    else
        setappdata(gcf,'hasOperator',true);
        exp=[exp num2str(num) '^'];
    end
    setappdata(gcf,'showExpand',false);
    setappdata(gcf,'exp',exp);
else
    funa_b(hObject,eventdata,handles,'xyinv(%g,)');
end




% --- Executes on button press in sqrtx.
function sqrtx_Callback(hObject, eventdata, handles)
% hObject    handle to sqrtx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
% hObject    handle to mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (~isfield(handles,'datas')) || (isempty(handles.data))
    return ;
end
showExpand=getappdata(gcf,'showExpand');
isSecFun=getappdata(gcf,'isSecFun');
str=get(handles.display,'String');
datas=handles.datas;
if showExpand
    datas=[datas str2double(str)];
    setappdata(gcf,'showExpand',false);
end
if ~isSecFun
    val=mean(datas);
else
    val=sun(datas.^2);
    setappdata(gcf,'isSecFun',false);
end
set(handles.display,'String',num2str(val,'%8.2f'));
set(handles.secndf,'visble','off','String','2ndF');
set(handles.radiobutton1,'enable','on');
set(handles.radiobutton2,'enable','on');
set(handles.radiobutton3,'enable','on');
handles.datas=[];
guidata(hObject,handles);

% --- Executes on button press in lgx.
function lgx_Callback(hObject, eventdata, handles)
% hObject    handle to lgx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in lnx.
function lnx_Callback(hObject, eventdata, handles)
% hObject    handle to lnx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in log2x.
function log2x_Callback(hObject, eventdata, handles)
% hObject    handle to log2x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in x2.
function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
unarray(hObject,eventdata,handles,'(%f)*(%f)','1/(%f)');

% --- Executes on button press in fac.
function fac_Callback(hObject, eventdata, handles)
% hObject    handle to fac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
unarray(hObject,eventdata,handles,'factorial(%f)','sum([1:%f])');

% --- Executes on button press in std.
function std_Callback(hObject, eventdata, handles)
% hObject    handle to std (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(~isfield(handles,'datas')) || (isempty(handles.datas))
    return ;
end
showExpand=getappdata(gcf,'showExpand');
isSecFun=getappdata(gcf,'isSecFun');
str=get(handles.display,'String');
datas=handles.datas;
if showExpand
    datas=[datas str2double(str)];
    setappdata(gcf,'showExpand',false);
end
if ~isSecFun
    val=std(datas)^2;
    setappdata(gcf,'isSecFun',false);
end
set(handles.display,'String',num2str(val,'%8.2f'));
set(handles.secndf,'visble','off','String','2ndF');
set(handles.radiobutton1,'enable','on');
set(handles.radiobutton2,'enable','on');
set(handles.radiobutton3,'enable','on');
handles.datas=[];
guidata(hObject,handles);



% --- Executes on button press in backspace.
function backspace_Callback(hObject, eventdata, handles)
% hObject    handle to backspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
isDecimal=getappdata(gcf,'isDecimal');
showExpand=getappdata(gcf,'showExpand');
base=getappdata(gcf,'base');

str=get(handles.display,'String');
if ~showExpand
    if base == uint8(10)
        set(handles.display,'String','0.');
    else
        set(handles.display,'String','0');
    end
else
    if base == uint8(10)
        if strcmp(str(end-1),'.')
            setappdata(gcf,'isDecimal',true);
            set(handles.display,'String',str(1:end-1));
        elseif strcmp(str(end),'.')
            if isDecimal
                setappdata(gcf,'isDecimal',false);
            else
                if strcmp(str(1),'-')
                    n=3;
                else
                    n=2;
                end
                if length(str)>n
                    str(end-1)='';
                    set(handles.display,'String',str);
                else
                    set(handles.display,'String','0.');
                end
            end
        else
            set(handles.display,'String',str(1:end-1));
        end
    else
        if length(str)>1
            set(handles.display,'String',str(1:end-1));
        else
            set(handles.display,'String','0');
        end
    end
end

                
            
% --- Executes on button press in secndf.
function secndf_Callback(hObject, eventdata, handles)
% hObject    handle to secndf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onc.
function onc_Callback(hObject, eventdata, handles)
% hObject    handle to onc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
base=getappdata(gcf,'base');
set(handles.secndf,'visble','off','String','2ndF');
set(handles.radiobutton1,'enable','on');
set(handles.radiobutton2,'enable','on');
set(handles.radiobutton3,'enable','on');

if base==uint8(10)
    set(handles.display,'String','0.');
else
    set(handles.display,'String','0');
end
reset(hObject,eventdata,handles);
set(handles.secndf,'visble','off','String','2ndF');




% --- Executes on button press in num7.
function num7_Callback(hObject, eventdata, handles)
% hObject    handle to num7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'7');


% --- Executes on button press in num8.
function num8_Callback(hObject, eventdata, handles)
% hObject    handle to num8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'8');



% --- Executes on button press in num9.
function num9_Callback(hObject, eventdata, handles)
% hObject    handle to num9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'9');



% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add_min_mul_div(hObject,eventdata,handles,'+');



% --- Executes on button press in num4.
function num4_Callback(hObject, eventdata, handles)
% hObject    handle to num4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'4');



% --- Executes on button press in num5.
function num5_Callback(hObject, eventdata, handles)
% hObject    handle to num5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'5');



% --- Executes on button press in num6.
function num6_Callback(hObject, eventdata, handles)
% hObject    handle to num6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'6');



% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add_min_mul_div(hObject,eventdata,handles,'-');



% --- Executes on button press in num1.
function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'1');



% --- Executes on button press in num2.
function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'2');



% --- Executes on button press in num3.
function num3_Callback(hObject, eventdata, handles)
% hObject    handle to num3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObject,eventdata,handles,'3');



% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add_min_mul_div(hObject,eventdata,handles,'*');



% --- Executes on button press in num0.
function num0_Callback(hObject, eventdata, handles)
% hObject    handle to num0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
number(hObejct,eventdata,handles,'0');



% --- Executes on button press in num_fuhao.
function num_fuhao_Callback(hObject, eventdata, handles)
% hObject    handle to num_fuhao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.display,'String');
if strcmp(str,'0.')
    return ;
end
hasOperator=getappdata(gcf,'hasOperator');
if ~hasOperator
    if str(1)=='-'
        set(handles.display,'String',str(2:end));
    else
        set(handles.display,'String',['-' str]);
    end
else
    setappdata(gcf,'isFun',false);
    setappdata(gcf,'isDecimal',false);
    setappdata(gcf,'showExpand',false);
    setappdata(gcf,'isSecFun',false);
    setappdata(gcf,'hasOperator',false);
    setappdata(gcf,'base',uint8(10));
    setappdata(gcf,'exp','');
    set(handles.display,'String','0.');
end



% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
isDecimal=getappdata(gcf,'isDecimal');
showExpand=getappdata(gcf,'showExpand');
if ~showExpand
    set(handles.display,'String','0.');
end
if ~isDecimal
    setappdata(gcf,'isDecimal',true);
    setappdata(gcf,'showExpand',true);
end



% --- Executes when selected object is changed in jinzhi.
function jinzhi_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in jinzhi 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
base=getappdata(gcf,'base');
b=get(handles.display,'String');
switch get(hObject,'tag')
    case 'radiobutton4'
        set(allchild(handles.uipanel5),'enable','on');%fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        h_all=[handles.num0 handles.num1 handles.num2 handles.num3 handles.num4 ...
            handles.num5 handles.num6 handles.num7 handles.num8 handles.num9...
            handles.e_val handles.pi_val handles.dot handles.num_fuhao];
        set(h_all,'enable','on');
        a_f=[handles.numa handles.numb handles.numc handles.numd handles.nume handles.numf];
        set(a_f,'enable','on');
        set(handles.dc,'enable','on');
        set(handles.m_add,'enable','on');
        c=hexbindexoct(base,uint8(10),b);
        set(handles.display,'String',c);
        setappdata(gcf,'base',uint8(10));
    case 'radiobutton3'
        set(allchild(handles.uipanel5),'enable','off'); 
         h_all=[handles.num0 handles.num1 handles.num2 handles.num3 handles.num4 ...
            handles.num5 handles.num6 handles.num7 handles.num8 handles.num9];
         a_f=[handles.numa handles.numb handles.numc handles.numd handles.nume handles.numf];
         set([h_all a_f],'enable','on');
         a_off=[handles,e_val handles.pi_val handles.dot handles.num_fuhao];
         set(a_off,'enable','off');
         set(handles.dc,'enable','off');
         set(handles.m_add,'enable','off');
         c=hexbindexoct(base,uint8(16),b);
         set(handles.display,'String',c);
         setappdata(gcf,'base',uint8(16));
    case 'radiobutton2'
         set(allchild(handles.uipanel5),'enable','off'); 
          h_all=[handles.num0 handles.num1 handles.num2 handles.num3 handles.num4 ...
            handles.num5 handles.num6 handles.num7 ];
        set(h_all,'enable','on');
        a_f=[handles.num8 handles.num9 handles.numa handles.numb handles.numc handles.numd handles.nume handles.numf ...
            handles,e_val handles.pi_val handles.dot handles.num_fuhao];
        set(a_f,'enable','off');
        set(handles.dc,'enable','off');
        set(handles.m_add,'enable','off');
        c=hexbindexoct(base,uint8(8),b);
        set(handles.display,'String',c);
        setappdata(gcf,'base',uint8(8));
    case 'radiobutton1'
        set(allchild(handles.uipanel5),'enable','off'); 
        h_all=[handles.num0 handles.num1 handles.num2 ];
        set(h_all,'enable','on');
        a_f=[handles.num8 handles.num9 handles.numa handles.numb handles.numc ...
            handles.numd handles.nume handles.numf  handles,e_val handles.pi_val ...
             handles.num3 handles.num4 handles.num5 handles.num6 handles.num7 ...
             handles.dot handles.num_fuhao];
         set(a_f,'enable','off');
         set(handles.dc,'enable','off');
         set(handles.m_add,'enable','off');
         c=hexbindexoct(base,uint8(2),b);
         set(handles.display,'String',c);
         setappdata(gcf,'base',uint8(2));
end
   setappdata(gcf,'hasOperator',false);
   setappdata(gcf,'isDecimal',false);
   setappdata(gcf,'showExpand',false);
        
% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add_min_mul_div(hObject,eventdata,handles,'/');
