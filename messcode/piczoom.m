function varargout = piczoom(varargin)
% PICZOOM MATLAB code for piczoom.fig
%      PICZOOM, by itself, creates a new PICZOOM or raises the existing
%      singleton*.
%
%      H = PICZOOM returns the handle to a new PICZOOM or the handle to
%      the existing singleton*.
%
%      PICZOOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PICZOOM.M with the given input arguments.
%
%      PICZOOM('Property','Value',...) creates a new PICZOOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piczoom_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piczoom_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piczoom

% Last Modified by GUIDE v2.5 05-Oct-2016 20:42:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piczoom_OpeningFcn, ...
                   'gui_OutputFcn',  @piczoom_OutputFcn, ...
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


% --- Executes just before piczoom is made visible.
function piczoom_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piczoom (see VARARGIN)

% Choose default command line output for piczoom
handles.output = hObject;
handles.output = hObject;
global m n mapdata
axes(handles.axes1);
cdata=imread('baiduPic2.jpg');
himage=image(cdata);
axis off
axes(handles.axes2);
m=size(cdata,1);
n=size(cdata,2);
mapdata=255 * ones(m+40,n+40,size(cdata,3),'uint8');
mapdata(21:m+20,21:n+20,:);
handles.himage=himage;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piczoom wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piczoom_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global m n mapdata
pos=get(handles.axes1,'CurrentPoint');
px=pos(1,1);
py=pos(1,2);
if((px>=1)&&(px<=n)&&(py>=1)&&(py<=m))
    x=floor(py)+20;
    y=floor(px)+20;
    cdata=mapdata(x-20:x+20,y-20:y+20,:);
    axes(handles.axes2);
    image(cdata);
    axis off
end