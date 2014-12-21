function varargout = imageRead(varargin)
% IMAGEREAD MATLAB code for imageRead.fig
%      IMAGEREAD, by itself, creates a new IMAGEREAD or raises the existing
%      singleton*.
%
%      H = IMAGEREAD returns the handle to a new IMAGEREAD or the handle to
%      the existing singleton*.
%
%      IMAGEREAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGEREAD.M with the given input arguments.
%
%      IMAGEREAD('Property','Value',...) creates a new IMAGEREAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imageRead_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imageRead_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imageRead

% Last Modified by GUIDE v2.5 21-Jun-2013 12:18:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imageRead_OpeningFcn, ...
                   'gui_OutputFcn',  @imageRead_OutputFcn, ...
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


% --- Executes just before imageRead is made visible.
function imageRead_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imageRead (see VARARGIN)

% Choose default command line output for imageRead
handles.output = hObject;
axes(handles.axes1);
image=imread('Linear system.png');
imagesc(image);
%hide axis name
set(handles.axes1,'visible','off');
 
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imageRead wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imageRead_OutputFcn(hObject, eventdata, handles) 
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

    image_read2;



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
    


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
   
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
   


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M1=round(100*rand(1));
M2=round(100*rand(1));
M3=round(100*rand(1));
M(1,1)=M1;
M(1,2)=M2;
M(1,3)=M3;
str=['     ',num2str(M1),'x+',num2str(M2),'y=',num2str(M3)];
set(handles.text2,'string',str);
M4=round(100*rand(1));
M5=round(100*rand(1));
M6=round(100*rand(1));
str=['     ',num2str(M4),'x+',num2str(M5),'y=',num2str(M6)];
set(handles.text3,'string',str);

M(2,1)=M4;
M(2,2)=M5;
M(2,3)=M6;
figure;
axis off;
text(0,0.5,num2str(M));


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('imageRead');
MainMenu;
