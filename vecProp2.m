function varargout = vecProp2(varargin)
% VECPROP2 MATLAB code for vecProp2.fig
%      VECPROP2, by itself, creates a new VECPROP2 or raises the existing
%      singleton*.
%
%      H = VECPROP2 returns the handle to a new VECPROP2 or the handle to
%      the existing singleton*.
%
%      VECPROP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VECPROP2.M with the given input arguments.
%
%      VECPROP2('Property','Value',...) creates a new VECPROP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vecProp2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vecProp2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vecProp2

% Last Modified by GUIDE v2.5 19-Jun-2013 14:11:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vecProp2_OpeningFcn, ...
                   'gui_OutputFcn',  @vecProp2_OutputFcn, ...
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


% --- Executes just before vecProp2 is made visible.
function vecProp2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vecProp2 (see VARARGIN)

% Choose default command line output for vecProp2
handles.output = hObject;
close('vecProp');
axes(handles.axes1);
image=imread('image3.png');
imagesc(image);
axis off
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vecProp2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vecProp2_OutputFcn(hObject, eventdata, handles) 
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
vecProp3;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
