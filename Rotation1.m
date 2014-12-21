function varargout = Rotation1(varargin)
% ROTATION1 MATLAB code for Rotation1.fig
%      ROTATION1, by itself, creates a new ROTATION1 or raises the existing
%      singleton*.
%
%      H = ROTATION1 returns the handle to a new ROTATION1 or the handle to
%      the existing singleton*.
%
%      ROTATION1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROTATION1.M with the given input arguments.
%
%      ROTATION1('Property','Value',...) creates a new ROTATION1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Rotation1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Rotation1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Rotation1

% Last Modified by GUIDE v2.5 21-Jun-2013 12:47:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Rotation1_OpeningFcn, ...
                   'gui_OutputFcn',  @Rotation1_OutputFcn, ...
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


% --- Executes just before Rotation1 is made visible.
function Rotation1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Rotation1 (see VARARGIN)

% Choose default command line output for Rotation1
handles.output = hObject;
axes(handles.axes1);
image=imread('rotation1.png');
imagesc(image);
%hide axis name
set(handles.axes1,'visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Rotation1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Rotation1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure
sp11 = subplot(2,2,1);
h11 = surf(sp11, peaks(20));
title('No Rotation')
sp12 = subplot(2,2,2);
h12 = surf(sp12, peaks(20));
title('Rotation Around X-Axis')
zdir = [1 0 0];
rotate(h12,zdir,25)
sp21 = subplot(2,2,3);
h21 = surf(sp21, peaks(20));
title('Rotation Around Y-Axis')
zdir = [0 1 0];
rotate(h21,zdir,25)
sp22 = subplot(2,2,4);
h22 = surf(sp22, peaks(20));
title('Rotation Around X- and Y-Axis')
zdir = [1 1 0];
rotate(h22,zdir,25)
