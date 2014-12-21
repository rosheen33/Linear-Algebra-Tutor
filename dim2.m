function varargout = dim2(varargin)
% DIM2 MATLAB code for dim2.fig
%      DIM2, by itself, creates a new DIM2 or raises the existing
%      singleton*.
%
%      H = DIM2 returns the handle to a new DIM2 or the handle to
%      the existing singleton*.
%
%      DIM2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIM2.M with the given input arguments.
%
%      DIM2('Property','Value',...) creates a new DIM2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dim2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dim2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dim2

% Last Modified by GUIDE v2.5 21-Jun-2013 09:48:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dim2_OpeningFcn, ...
                   'gui_OutputFcn',  @dim2_OutputFcn, ...
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


% --- Executes just before dim2 is made visible.
function dim2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dim2 (see VARARGIN)

% Choose default command line output for dim2
handles.output = hObject;
close('dimension');
axes(handles.axes1);
image=imread('dim2.png');
imagesc(image);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dim2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dim2_OutputFcn(hObject, eventdata, handles) 
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
dim3;
