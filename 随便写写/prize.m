function varargout = prize(varargin)
% PRIZE MATLAB code for prize.fig
%      PRIZE, by itself, creates a new PRIZE or raises the existing
%      singleton*.
%
%      H = PRIZE returns the handle to a new PRIZE or the handle to
%      the existing singleton*.
%
%      PRIZE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRIZE.M with the given input arguments.
%
%      PRIZE('Property','Value',...) creates a new PRIZE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prize_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prize_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prize

% Last Modified by GUIDE v2.5 16-Oct-2016 18:11:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prize_OpeningFcn, ...
                   'gui_OutputFcn',  @prize_OutputFcn, ...
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


% --- Executes just before prize is made visible.
function prize_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prize (see VARARGIN)

% Choose default command line output for prize
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prize wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prize_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function valdisp_Callback(hObject, eventdata, handles)
% hObject    handle to valdisp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valdisp as text
%        str2double(get(hObject,'String')) returns contents of valdisp as a double


% --- Executes during object creation, after setting all properties.
function valdisp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valdisp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nstart_Callback(hObject, eventdata, handles)
% hObject    handle to nstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nstart as text
%        str2double(get(hObject,'String')) returns contents of nstart as a double


% --- Executes during object creation, after setting all properties.
function nstart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nend_Callback(hObject, eventdata, handles)
% hObject    handle to nend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nend as text
%        str2double(get(hObject,'String')) returns contents of nend as a double


% --- Executes during object creation, after setting all properties.
function nend_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pstart.
function pstart_Callback(hObject, eventdata, handles)
% hObject    handle to pstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valstart=str2double(get(handles.nstart,'String'));
if isnan(valstart)
    set(handles.nstart,'String','');
    return ;
end
valend=str2double(get(handles.nend,'String'));
if isnan(valend)
    set(handles.nend,'String','');
    return ;
end
strremove=get(handles.remove,'String');
cellremove=cellstr(strremove);
valremove=[];
if ~isempty(cellremove)
    for i=1:length(valremove)
        valremove=[valremove str2double(cellremove{i})];
    end
end
valstart=floor(valstart);
valend=floor(valend);
if valstart>valend || valstart<=0
    set(handles.nstart,'String','');
    return ;
end
set([handles.nstart,handles.nend,handles.remove],'enable','off');
set(handles.pend,'enable','on');
t=timer('BusyMode','queue','ExecutionMode','fixedSpacing', ...
    'Period',0.02,'TimerFcn',{@update,handles,valstart,valend,valremove});
start(t);

% --- Executes on button press in pend.
function pend_Callback(hObject, eventdata, handles)
% hObject    handle to pend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=timerfind;
stop(t);
delete(t);
set([handles.nstart,handles.nend,handles.remove,handles.pstart],'enable','on');
set(hObject,'enable','off');
pause(0.7);



function remove_Callback(hObject, eventdata, handles)
% hObject    handle to remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of remove as text
%        str2double(get(hObject,'String')) returns contents of remove as a double


% --- Executes during object creation, after setting all properties.
function remove_CreateFcn(hObject, eventdata, handles)
% hObject    handle to remove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
