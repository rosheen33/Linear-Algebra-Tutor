function varargout = dependance(varargin)
% DEPENDANCE MATLAB code for dependance.fig
%      DEPENDANCE, by itself, creates a new DEPENDANCE or raises the existing
%      singleton*.
%
%      H = DEPENDANCE returns the handle to a new DEPENDANCE or the handle to
%      the existing singleton*.
%
%      DEPENDANCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEPENDANCE.M with the given input arguments.
%
%      DEPENDANCE('Property','Value',...) creates a new DEPENDANCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dependance_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dependance_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dependance

% Last Modified by GUIDE v2.5 21-Jun-2013 09:07:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dependance_OpeningFcn, ...
                   'gui_OutputFcn',  @dependance_OutputFcn, ...
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


% --- Executes just before dependance is made visible.
function dependance_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dependance (see VARARGIN)

% Choose default command line output for dependance
handles.output = hObject;
axes(handles.axes1);
image=imread('dependance.png');
imagesc(image);
%hide axis name
set(handles.axes1,'visible','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dependance wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dependance_OutputFcn(hObject, eventdata, handles) 
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
exampDem;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
exampDem;
