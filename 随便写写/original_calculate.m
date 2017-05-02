function varargout = original_calculate(varargin)
% ORIGINAL_CALCULATE MATLAB code for original_calculate.fig
%      ORIGINAL_CALCULATE, by itself, creates a new ORIGINAL_CALCULATE or raises the existing
%      singleton*.
%
%      H = ORIGINAL_CALCULATE returns the handle to a new ORIGINAL_CALCULATE or the handle to
%      the existing singleton*.
%
%      ORIGINAL_CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ORIGINAL_CALCULATE.M with the given input arguments.
%
%      ORIGINAL_CALCULATE('Property','Value',...) creates a new ORIGINAL_CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before original_calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to original_calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help original_calculate

% Last Modified by GUIDE v2.5 15-Oct-2016 17:41:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @original_calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @original_calculate_OutputFcn, ...
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


% --- Executes just before original_calculate is made visible.
function original_calculate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to original_calculate (see VARARGIN)

% Choose default command line output for original_calculate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.output = hObject;
global origin;
set(handles.text1,'String',0);
origin=0;
% UIWAIT makes original_calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = original_calculate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num7.
function num7_Callback(hObject, eventdata, handles)
% hObject    handle to num7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','7');
else
    textstring=strcat(textstring,'7');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num8.
function num8_Callback(hObject, eventdata, handles)
% hObject    handle to num8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','8');
else
    textstring=strcat(textstring,'8');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num9.
function num9_Callback(hObject, eventdata, handles)
% hObject    handle to num9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','9');
else
    textstring=strcat(textstring,'9');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textstring=get(handles.text1,'String');
textstring=strcat(textstring,'+');
set(handles.text1,'String',textstring);


% --- Executes on button press in num4.
function num4_Callback(hObject, eventdata, handles)
% hObject    handle to num4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','4');
else
    textstring=strcat(textstring,'4');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num5.
function num5_Callback(hObject, eventdata, handles)
% hObject    handle to num5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','5');
else
    textstring=strcat(textstring,'5');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num6.
function num6_Callback(hObject, eventdata, handles)
% hObject    handle to num6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','6');
else
    textstring=strcat(textstring,'6');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textstring=get(handles.text1,'String');
textstring=strcat(textstring,'-');
set(handles.text1,'String',textstring);


% --- Executes on button press in num1.
function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','1');
else
    textstring=strcat(textstring,'1');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num2.
function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','2');
else
    textstring=strcat(textstring,'2');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in num3.
function num3_Callback(hObject, eventdata, handles)
% hObject    handle to num3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','3');
else
    textstring=strcat(textstring,'3');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in times.
function times_Callback(hObject, eventdata, handles)
% hObject    handle to times (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textstring=get(handles.text1,'String');
textstring=strcat(textstring,'*');
set(handles.text1,'String',textstring);

% --- Executes on button press in num0.
function num0_Callback(hObject, eventdata, handles)
% hObject    handle to num0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','0');
else
    textstring=strcat(textstring,'0');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
res=eval(str);
set(handles.text1,'String',res);

% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textstring=get(handles.text1,'String');
textstring=strcat(textstring,'.');
set(handles.text1,'String',textstring);


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textstring=get(handles.text1,'String');
textstring=strcat(textstring,'/');
set(handles.text1,'String',textstring);


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text1,'String','0');


% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text1,'String');
if(length(str)>1)
    set(handles.text1,'String',str(1:end-1));
else
    set(handles.text1,'String','0');
end


% --- Executes on button press in kh1.
function kh1_Callback(hObject, eventdata, handles)
% hObject    handle to kh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String','(');
else
    textstring=strcat(textstring,'(');
    set(handles.text1,'String',textstring);
end
origin=0;

% --- Executes on button press in kh2.
function kh2_Callback(hObject, eventdata, handles)
% hObject    handle to kh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global origin;
textstring=get(handles.text1,'String');
if(strcmp(textstring,'0')==1&&(origin==0))
    set(handles.text1,'String',')');
else
    textstring=strcat(textstring,')');
    set(handles.text1,'String',textstring);
end
origin=0;


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string=get(handles.text1,'String');
if(strcmp(string,'0')==1)
    set(handles.text1,'String','sin(');
else
    string=strcat(string,'sin(');
    set(handles.text1,'String',string);
end


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string=get(handles.text1,'String');
if(strcmp(string,'0')==1)
    set(handles.text1,'String','cos(');
else
    string=strcat(string,'cos(');
    set(handles.text1,'String',string);
end


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string=get(handles.text1,'String');
if(strcmp(string,'0')==1)
    set(handles.text1,'String','tan(');
else
    string=strcat(string,'tan(');
    set(handles.text1,'String',string);
end


% --- Executes on button press in fact.
function fact_Callback(hObject, eventdata, handles)
% hObject    handle to fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string=get(handles.text1,'String');
if(strcmp(string,'0')==1)
    set(handles.text1,'String','factorial(');
else
    string=strcat(string,'factorial(');
    set(handles.text1,'String',string);
end
