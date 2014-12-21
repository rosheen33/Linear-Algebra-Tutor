function varargout = Developers(varargin)
% DEVELOPERS MATLAB code for Developers.fig
%      DEVELOPERS, by itself, creates a new DEVELOPERS or raises the existing
%      singleton*.
%
%      H = DEVELOPERS returns the handle to a new DEVELOPERS or the handle to
%      the existing singleton*.
%
%      DEVELOPERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEVELOPERS.M with the given input arguments.
%
%      DEVELOPERS('Property','Value',...) creates a new DEVELOPERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Developers_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Developers_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Developers

% Last Modified by GUIDE v2.5 21-Jun-2013 07:31:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Developers_OpeningFcn, ...
                   'gui_OutputFcn',  @Developers_OutputFcn, ...
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


% --- Executes just before Developers is made visible.
function Developers_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Developers (see VARARGIN)

% Choose default command line output for Developers
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Developers wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Developers_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
