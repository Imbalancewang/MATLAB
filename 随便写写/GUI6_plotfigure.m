function varargout = GUI6_plotfigure(varargin)
% GUI6_PLOTFIGURE MATLAB code for GUI6_plotfigure.fig
%      GUI6_PLOTFIGURE, by itself, creates a new GUI6_PLOTFIGURE or raises the existing
%      singleton*.
%
%      H = GUI6_PLOTFIGURE returns the handle to a new GUI6_PLOTFIGURE or the handle to
%      the existing singleton*.
%
%      GUI6_PLOTFIGURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI6_PLOTFIGURE.M with the given input arguments.
%
%      GUI6_PLOTFIGURE('Property','Value',...) creates a new GUI6_PLOTFIGURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI6_plotfigure_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI6_plotfigure_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI6_plotfigure

% Last Modified by GUIDE v2.5 05-Sep-2016 21:03:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI6_plotfigure_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI6_plotfigure_OutputFcn, ...
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


% --- Executes just before GUI6_plotfigure is made visible.
function GUI6_plotfigure_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI6_plotfigure (see VARARGIN)

% Choose default command line output for GUI6_plotfigure
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI6_plotfigure wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI6_plotfigure_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GUI6_2D;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GUI6_3D;