function varargout = dimTest(varargin)
% DIMTEST MATLAB code for dimTest.fig
%      DIMTEST, by itself, creates a new DIMTEST or raises the existing
%      singleton*.
%
%      H = DIMTEST returns the handle to a new DIMTEST or the handle to
%      the existing singleton*.
%
%      DIMTEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIMTEST.M with the given input arguments.
%
%      DIMTEST('Property','Value',...) creates a new DIMTEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dimTest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dimTest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dimTest

% Last Modified by GUIDE v2.5 21-Jun-2013 04:15:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dimTest_OpeningFcn, ...
                   'gui_OutputFcn',  @dimTest_OutputFcn, ...
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


% --- Executes just before dimTest is made visible.
function dimTest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dimTest (see VARARGIN)

% Choose default command line output for dimTest
handles.output = hObject;
close('exampDem');
axes(handles.axes1);
image=imread('demTest.png');
imagesc(image);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dimTest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dimTest_OutputFcn(hObject, eventdata, handles) 
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
choice=menu('1: The subspace spanned by the row vectors is called column space??','T','F');
if(choice==1)
    disp('Your 1st answer is correct');
    count=(count+1);
else
    disp('Youe 1st answer is not correct');
end
choice=menu('2: Ax cannot be express as a linear combination of the column space??','T','F');
if(choice==2)
    disp('Your 2nd answer is correct');
    count=(count+1);
else
    disp('Youe 2nd answer is not correct');
end
choice=menu('3: If a matrix R is in row echelon form,then the column vectors with the leading 1s of the row space form a basis for the row space of R????','T','F');
if(choice==1)
disp('Your 3rd answer is correct');
count=(count+1);
else
disp('Youe 3rd answer is not correct');
end
choice=menu('4: If A and B are row equivalent matrices then a set of column vectors of A is linearly independent ?? ','T','F');
if(choice==1)
    disp('Your 4th answer is correct');
    count=(count+1);
else
    disp('Youe 4th answer is not correct');
end
choice=menu('5: A set of column vectors of A forms a basis for the column spaces of A if and only if the column vectors of B form a basis for the column space of A.?? ','T','F');
if(choice==2)
    disp('Your 5th answer is correct');
    count=(count+1);
else
    disp('Your 5th answer is not correct');
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
