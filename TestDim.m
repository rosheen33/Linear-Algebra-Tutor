function varargout = TestDim(varargin)
% TESTDIM MATLAB code for TestDim.fig
%      TESTDIM, by itself, creates a new TESTDIM or raises the existing
%      singleton*.
%
%      H = TESTDIM returns the handle to a new TESTDIM or the handle to
%      the existing singleton*.
%
%      TESTDIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTDIM.M with the given input arguments.
%
%      TESTDIM('Property','Value',...) creates a new TESTDIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TestDim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TestDim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TestDim

% Last Modified by GUIDE v2.5 21-Jun-2013 11:52:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TestDim_OpeningFcn, ...
                   'gui_OutputFcn',  @TestDim_OutputFcn, ...
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


% --- Executes just before TestDim is made visible.
function TestDim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TestDim (see VARARGIN)

% Choose default command line output for TestDim
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

% UIWAIT makes TestDim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TestDim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag1',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag2',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag3',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag4',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'flag5',1);
% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
count1=getappdata(0,'count');
flag11=getappdata(0,'flag1');
if(flag11==0)
    count1=count1-1;
else
    set(handles.text6,'string','Correct');
end
flag22=getappdata(0,'flag2');
if(flag22~=0)
    count1=count1-1;
else
    set(handles.text7,'string','Correct');
end
flag33=getappdata(0,'flag3');
if(flag33~=0)
    count1=count1-1;
else
     set(handles.text9,'string','Correct');
end
flag44=getappdata(0,'flag4');
if(flag44==0)
    count1=count1-1;
else
     set(handles.text8,'string','Correct');
end
flag55=getappdata(0,'flag5');
if(flag55==0)
    count1=count1-1;
else
     set(handles.text10,'string','Correct');
end
str=['          ',num2str(count1),'/5'];
set(handles.text4,'string',str);
