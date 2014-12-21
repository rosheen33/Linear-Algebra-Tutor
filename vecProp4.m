function varargout = vecProp4(varargin)
% VECPROP4 MATLAB code for vecProp4.fig
%      VECPROP4, by itself, creates a new VECPROP4 or raises the existing
%      singleton*.
%
%      H = VECPROP4 returns the handle to a new VECPROP4 or the handle to
%      the existing singleton*.
%
%      VECPROP4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VECPROP4.M with the given input arguments.
%
%      VECPROP4('Property','Value',...) creates a new VECPROP4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vecProp4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vecProp4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vecProp4

% Last Modified by GUIDE v2.5 21-Jun-2013 00:37:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vecProp4_OpeningFcn, ...
                   'gui_OutputFcn',  @vecProp4_OutputFcn, ...
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


% --- Executes just before vecProp4 is made visible.
function vecProp4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vecProp4 (see VARARGIN)

% Choose default command line output for vecProp4
handles.output = hObject;
close('vecProp3');
axes(handles.axes1);
image=imread('image5.png');
imagesc(image);
axis off
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vecProp4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vecProp4_OutputFcn(hObject, eventdata, handles) 
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
% vecTest;
TestV;


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
close('vecProp4');
