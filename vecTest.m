function varargout = vecTest(varargin)
% VECTEST MATLAB code for vecTest.fig
%      VECTEST, by itself, creates a new VECTEST or raises the existing
%      singleton*.
%
%      H = VECTEST returns the handle to a new VECTEST or the handle to
%      the existing singleton*.
%
%      VECTEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VECTEST.M with the given input arguments.
%
%      VECTEST('Property','Value',...) creates a new VECTEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vecTest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vecTest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vecTest

% Last Modified by GUIDE v2.5 19-Jun-2013 21:18:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vecTest_OpeningFcn, ...
                   'gui_OutputFcn',  @vecTest_OutputFcn, ...
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


% --- Executes just before vecTest is made visible.
function vecTest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vecTest (see VARARGIN)

% Choose default command line output for vecTest
handles.output = hObject;
axes(handles.axes1);
image=imread('vecTest.png');
imagesc(image);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vecTest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vecTest_OutputFcn(hObject, eventdata, handles) 
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
response=input('Press any key to start test');
count=0;
choice=menu('1: If u abd v are objects in V,then u+v is in V??','T','F');
if(choice==1)
    disp('Your 1st answer is correct');
    count=(count+1);
else
    disp('Youe 1st answer is not correct');
end
choice=menu('2: If k is an vactor and u is any objet in V then ku is in V ','T','F');
if(choice==2)
    disp('Your 2nd answer is correct');
    count=(count+1);
else
    disp('Youe 2nd answer is not correct');
end
choice=menu('3: The negative of a vector u is its reciporcal??','T','F');
if(choice==1)
disp('Your 3rd answer is correct');
count=(count+1);
else
disp('Youe 3rd answer is not correct');
end
choice=menu('4: Vector addition is numerical power?? ','T','F');
if(choice==2)
    disp('Your 4th answer is correct');
    count=(count+1);
else
    disp('Youe 4th answer is not correct');
end
choice=menu('5: Scalar multiplication is numerical exponentiation?? ','T','F');
if(choice==1)
    disp('Your 5th answer is correct');
    count=(count+1);
else
    disp('Youe 5th answer is not correct');
end
disp(' ');
str=['Your score is ',num2str(count),'/5'];
disp(str);
disp(' ');
    response1=input('Press any key continue.........');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('vecTest');