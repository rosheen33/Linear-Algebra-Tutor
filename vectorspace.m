function varargout = vectorspace(varargin)
% VECTORSPACE MATLAB code for vectorspace.fig
%      VECTORSPACE, by itself, creates a new VECTORSPACE or raises the existing
%      singleton*.
%
%      H = VECTORSPACE returns the handle to a new VECTORSPACE or the handle to
%      the existing singleton*.
%
%      VECTORSPACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VECTORSPACE.M with the given input arguments.
%
%      VECTORSPACE('Property','Value',...) creates a new VECTORSPACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vectorspace_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vectorspace_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vectorspace

% Last Modified by GUIDE v2.5 19-Jun-2013 13:49:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vectorspace_OpeningFcn, ...
                   'gui_OutputFcn',  @vectorspace_OutputFcn, ...
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


% --- Executes just before vectorspace is made visible.
function vectorspace_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vectorspace (see VARARGIN)

% Choose default command line output for vectorspace
handles.output = hObject;
axes(handles.axes1);
image=imread('image1.png');
imagesc(image);
axis off
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vectorspace wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vectorspace_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vecProp;
