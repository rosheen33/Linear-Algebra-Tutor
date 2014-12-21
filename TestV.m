function varargout = TestV(varargin)
% TESTV MATLAB code for TestV.fig
%      TESTV, by itself, creates a new TESTV or raises the existing
%      singleton*.
%
%      H = TESTV returns the handle to a new TESTV or the handle to
%      the existing singleton*.
%
%      TESTV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTV.M with the given input arguments.
%
%      TESTV('Property','Value',...) creates a new TESTV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TestV_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TestV_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TestV

% Last Modified by GUIDE v2.5 21-Jun-2013 00:33:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TestV_OpeningFcn, ...
                   'gui_OutputFcn',  @TestV_OutputFcn, ...
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


% --- Executes just before TestV is made visible.
function TestV_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TestV (see VARARGIN)

% Choose default command line output for TestV
handles.output = hObject;

count=5;
setappdata(0,'count',count);
setappdata(0,'flag1',0);
setappdata(0,'flag2',0);
setappdata(0,'flag3',0);
setappdata(0,'flag4',0);
setappdata(0,'flag5',0);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TestV wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TestV_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag1',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag2',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag3',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag4',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag5',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
count1=getappdata(0,'count');
flag11=getappdata(0,'flag1');
if(flag11==0)
    count1=count1-1;
else
    set(handles.text17,'string','Correct');
end
flag22=getappdata(0,'flag2');
if(flag22~=0)
    count1=count1-1;
else
    set(handles.text18,'string','Correct');
end
flag33=getappdata(0,'flag3');
if(flag33==0)
    count1=count1-1;
else
     set(handles.text20,'string','Correct');
end
flag44=getappdata(0,'flag4');
if(flag44~=0)
    count1=count1-1;
else
     set(handles.text19,'string','Correct');
end
flag55=getappdata(0,'flag5');
if(flag55==0)
    count1=count1-1;
else
     set(handles.text21,'string','Correct');
end
str=['          ',num2str(count1),'/5'];
set(handles.text15,'string',str);
