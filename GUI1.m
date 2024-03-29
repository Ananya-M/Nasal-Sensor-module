
function varargout = GUI1(varargin)
% GUI1 MATLAB code for GUI1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI1

% Last Modified by GUIDE v2.5 24-May-2019 08:14:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI1_OutputFcn, ...
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


% --- Executes just before GUI1 is made visible.
function GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI1 (see VARARGIN)
handles.SUBJECT1=load('SUB1.TXT');


% Choose default command line output for GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI1_OutputFcn(hObject, eventdata, handles) 
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
x=handles.SUBJECT1;
 plot(x(:,1));
 j=1;
 n=length(x);

for i=2:n-1
    if x(i)< x(i-1) && x(i)<= x(i+1) 
       val(j)= x(i);
       pos(j)=i;
       j=j+1;
     end
end
peaks=j-1;
j=1;
n=length(x);
for i=2:n-1
    if x(i)> x(i-1) && x(i)>= x(i+1) 
       val1(j)= x(i);
       pos1(j)=i;
       j=j+1;
     end
end
peaks1=j-1;
figure();stem(pos1,val1,'*r');
title('h peak');

pos=pos(1:38);
for i=2:1:37
it(j)=pos(i+1)-pos(i);
j=j+1;
end
figure();stairs(it);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.SUBJECT1;
 plot(x(:,1));
 j=1;
 n=length(x);

for i=2:n-1
    if x(i)< x(i-1) && x(i)<= x(i+1) 
       val(j)= x(i);
       pos(j)=i;
       j=j+1;
     end
end
peaks=j-1;
figure();stem(pos,val,'*r');
j=1;
n=length(x);
for i=2:n-1
    if x(i)> x(i-1) && x(i)>= x(i+1) 
       val1(j)= x(i);
       pos1(j)=i;
       j=j+1;
     end
end
peaks1=j-1;

pos=pos(1:38);
for i=2:1:37
et(j)=pos1(i)-pos(i-1);
j=j+1;
end

figure();stairs(et);




% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.SUBJECT1;
 plot(x(:,1));
 j=1;
 n=length(x);

for i=2:n-1
    if x(i)< x(i-1) && x(i)<= x(i+1) 
       val(j)= x(i);
       pos(j)=i;
       j=j+1;
     end
end
peaks=j-1;
j=1;
n=length(x);
for i=2:n-1
    if x(i)> x(i-1) && x(i)>= x(i+1) 
       val1(j)= x(i);
       pos1(j)=i;
       j=j+1;
     end
end
peaks1=j-1;

pos=pos(1:38);
for i=2:1:37
it(j)=pos(i+1)-pos(i);
j=j+1;
end
peaks1=j-1;
sumi=sum(it);
avgi=sumi/38;
disp(avgi);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.SUBJECT1;
 plot(x(:,1));
 j=1;
 n=length(x);

for i=2:n-1
    if x(i)< x(i-1) && x(i)<= x(i+1) 
       val(j)= x(i);
       pos(j)=i;
       j=j+1;
     end
end
peaks=j-1;
j=1;
n=length(x);
for i=2:n-1
    if x(i)> x(i-1) && x(i)>= x(i+1) 
       val1(j)= x(i);
       pos1(j)=i;
       j=j+1;
     end
end
peaks1=j-1;

pos=pos(1:38);
for i=2:1:37
et(j)=pos1(i)-pos(i-1);
j=j+1;
end
sume=sum(et);
avge=sume/38;
disp(avge);
