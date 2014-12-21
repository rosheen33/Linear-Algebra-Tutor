function varargout = rowTest(varargin)
% ROWTEST MATLAB code for rowTest.fig
%      ROWTEST, by itself, creates a new ROWTEST or raises the existing
%      singleton*.
%
%      H = ROWTEST returns the handle to a new ROWTEST or the handle to
%      the existing singleton*.
%
%      ROWTEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROWTEST.M with the given input arguments.
%
%      ROWTEST('Property','Value',...) creates a new ROWTEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rowTest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rowTest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rowTest

% Last Modified by GUIDE v2.5 21-Jun-2013 06:43:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rowTest_OpeningFcn, ...
                   'gui_OutputFcn',  @rowTest_OutputFcn, ...
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


% --- Executes just before rowTest is made visible.
function rowTest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rowTest (see VARARGIN)

% Choose default command line output for rowTest
handles.output = hObject;
close('row1');
axes(handles.axes1);
image=imread('vecTest.png');
imagesc(image);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rowTest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rowTest_OutputFcn(hObject, eventdata, handles) 
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
choice=menu('1: The subspace spanned by the row vectors is called row space??','T','F');
if(choice==1)
    disp('Your 1st answer is correct');
    count=(count+1);
else
    disp('Youe 1st answer is not correct');
end
choice=menu('2: Elementary row operations change the row space of a matrix ','T','F');
if(choice==2)
    disp('Your 2nd answer is correct');
    count=(count+1);
else
    disp('Youe 2nd answer is not correct');
end
choice=menu('3: A system of linear equation Ax=b is consistent if and only if b is in the row space of A??','T','F');
if(choice==2)
disp('Your 3rd answer is correct');
count=(count+1);
else
disp('Youe 3rd answer is not correct');
end
choice=menu('4: If a matrix R is in reduced row echelon form,then the row vectors with the leading 1s form a basis for the row space of R??','T','F');
if(choice==2)
    disp('Your 4th answer is correct');
    count=(count+1);
else
    disp('Youe 4th answer is not correct');
end
choice=menu('5: Elementary row operation donot change the null space of a matrix?? ','T','F');
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
close('rowTest');


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
