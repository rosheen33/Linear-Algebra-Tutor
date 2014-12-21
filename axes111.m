function varargout = axes111(varargin)
% AXES111 MATLAB code for axes111.fig
%      AXES111, by itself, creates a new AXES111 or raises the existing
%      singleton*.
%
%      H = AXES111 returns the handle to a new AXES111 or the handle to
%      the existing singleton*.
%
%      AXES111('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AXES111.M with the given input arguments.
%
%      AXES111('Property','Value',...) creates a new AXES111 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before axes111_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to axes111_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help axes111

% Last Modified by GUIDE v2.5 04-Jun-2013 10:37:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @axes111_OpeningFcn, ...
                   'gui_OutputFcn',  @axes111_OutputFcn, ...
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


% --- Executes just before axes111 is made visible.
function axes111_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to axes111 (see VARARGIN)

% Choose default command line output for axes111
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes axes111 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = axes111_OutputFcn(hObject, eventdata, handles) 
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

axes(handles.axes1);
x=1:10;
y=1:10;
plot(x,y);
xlabel('X axis');
ylabel('Y axis');
