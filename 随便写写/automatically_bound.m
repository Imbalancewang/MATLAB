function varargout = automatically_bound(varargin)
% AUTOMATICALLY_BOUND MATLAB code for automatically_bound.fig
%      AUTOMATICALLY_BOUND, by itself, creates a new AUTOMATICALLY_BOUND or raises the existing
%      singleton*.
%
%      H = AUTOMATICALLY_BOUND returns the handle to a new AUTOMATICALLY_BOUND or the handle to
%      the existing singleton*.
%
%      AUTOMATICALLY_BOUND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUTOMATICALLY_BOUND.M with the given input arguments.
%
%      AUTOMATICALLY_BOUND('Property','Value',...) creates a new AUTOMATICALLY_BOUND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before automatically_bound_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to automatically_bound_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help automatically_bound

% Last Modified by GUIDE v2.5 17-Oct-2016 21:57:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @automatically_bound_OpeningFcn, ...
                   'gui_OutputFcn',  @automatically_bound_OutputFcn, ...
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


% --- Executes just before automatically_bound is made visible.
function automatically_bound_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to automatically_bound (see VARARGIN)

% Choose default command line output for automatically_bound
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes automatically_bound wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = automatically_bound_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start1.
function start1_Callback(hObject, eventdata, handles)
% hObject    handle to start1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of start1
if get(hObject,'Value')
    set(hObject,'String','start','ForeGroundColor','r');
    t=timer('startdelay',1,'TimerFcn',{@timer1,handles});
    start(t);
end

