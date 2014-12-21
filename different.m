function varargout = different(varargin)
%DIFFERENT M-file for different.fig
%      DIFFERENT, by itself, creates a new DIFFERENT or raises the existing
%      singleton*.
%
%      H = DIFFERENT returns the handle to a new DIFFERENT or the handle to
%      the existing singleton*.
%
%      DIFFERENT('Property','Value',...) creates a new DIFFERENT using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to different_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      DIFFERENT('CALLBACK') and DIFFERENT('CALLBACK',hObject,...) call the
%      local function named CALLBACK in DIFFERENT.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help different

% Last Modified by GUIDE v2.5 11-Jun-2013 23:52:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @different_OpeningFcn, ...
                   'gui_OutputFcn',  @different_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before different is made visible.
function different_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for different
count=0;
setappdata(0,'count',count);
count1=getappdata(0,'count');
if(count1==0)
    
    handles.output = hObject;
    axes(handles.axes1);
    image=imread('Linear system.png');
    imagesc(image);
    %hide axis name
    set(handles.axes1,'visible','off');
     M1=round(100*rand(1));
    M2=round(100*rand(1));
    M3=round(100*rand(1));
    str=['     ',num2str(M1),'x+',num2str(M2),'y=',num2str(M3)];
    set(handles.text2,'string',str);
    M4=round(100*rand(1));
    M5=round(100*rand(1));
    M6=round(100*rand(1));
    str=['     ',num2str(M4),'x+',num2str(M5),'y=',num2str(M6)];
    set(handles.text3,'string',str);
    count=count+1;
    setappdata(0,'count',count);
elseif(count1==2)
    handles.output = hObject;
    axes(handles.axes1);
    image=imread('Linear_system5.png');
    imagesc(image);
    %hide axis name
    set(handles.axes1,'visible','off');
     M1=round(100*rand(1));
    M2=round(100*rand(1));
    M3=round(100*rand(1));
    str=['     ',num2str(M1),'x+',num2str(M2),'y=',num2str(M3)];
    set(handles.text2,'string',str);
    M4=round(100*rand(1));
    M5=round(100*rand(1));
    M6=round(100*rand(1));
    str=['     ',num2str(M4),'x+',num2str(M5),'y=',num2str(M6)];
    set(handles.text3,'string',str);
    count=count+1;
    setappdata(0,'count',count);
end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes different wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = different_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
count=0;
setappdata(0,'count',count);
count1=getappdata(0,'count');
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over popupmenu2.
function popupmenu2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

different;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
