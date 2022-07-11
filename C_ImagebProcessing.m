function varargout = C_ImagebProcessing(varargin)
% C_IMAGEBPROCESSING MATLAB code for C_ImagebProcessing.fig
%      C_IMAGEBPROCESSING, by itself, creates a new C_IMAGEBPROCESSING or raises the existing
%      singleton*.
%
%      H = C_IMAGEBPROCESSING returns the handle to a new C_IMAGEBPROCESSING or the handle to
%      the existing singleton*.
%
%      C_IMAGEBPROCESSING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in C_IMAGEBPROCESSING.M with the given input arguments.
%
%      C_IMAGEBPROCESSING('Property','Value',...) creates a new C_IMAGEBPROCESSING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before C_ImagebProcessing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to C_ImagebProcessing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help C_ImagebProcessing

% Last Modified by GUIDE v2.5 18-Jan-2022 23:15:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @C_ImagebProcessing_OpeningFcn, ...
                   'gui_OutputFcn',  @C_ImagebProcessing_OutputFcn, ...
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


% --- Executes just before C_ImagebProcessing is made visible.
function C_ImagebProcessing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to C_ImagebProcessing (see VARARGIN)

% Choose default command line output for C_ImagebProcessing
handles.output = hObject;

set(handles.g1,'Visible','off');
set(handles.g2,'Visible','off');
set(handles.path,'Enable','off');
set(handles.save,'Enable','off');
set(handles.s1,'Enable','off');
set(handles.s2,'Enable','off');
set(handles.s3,'Enable','off');
set(handles.s4,'Enable','off');
set(handles.g3,'Visible','off');
set(handles.g4,'Visible','off');
set(handles.s5,'Enable','off');
set(handles.s6,'Enable','off');
set(handles.s7,'Enable','off');
set(handles.s8,'Enable','off');
set(handles.s9,'Enable','off');
set(handles.BLK,'Enable','off');
set(handles.slider1,'Enable','off');
set(handles.slider2,'Enable','off');
set(handles.slider3,'Enable','off');
set(handles.slider4,'Enable','off');
set(handles.slider5,'Enable','off');
set(handles.slider6,'Enable','off');
set(handles.rv,'Enable','off');
set(handles.gv,'Enable','off');
set(handles.bv,'Enable','off');
set(handles.cv,'Enable','off');
set(handles.bbv,'Enable','off');
set(handles.reset,'Enable','off');
set(handles.s6,'Enable','off');
set(handles.p1,'Enable','off');
set(handles.info,'Enable','off');

% Update handles structure

guidata(hObject, handles);

% UIWAIT makes C_ImagebProcessing wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = C_ImagebProcessing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function updateg4(handles)
r=handles.img(:,:,1);
g=handles.img(:,:,2);
b=handles.img(:,:,3);
x=size(r); x=(1:x(1,2));
r=r(1,:); g=g(1,:); b=b(1,:);
axes(handles.g4); plot(x,r,'r');
hold on
plot(x,g,'g'); plot(x,b,'b'); hold off;

% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Browse the file from user
[file path]=uigetfile({'*.jpg';'*.bmp';'*.jpeg';'*.png'}, 'Load Image File within Avilable Extensions');
image=[path file];
handles.file=image;
if (file==0)
    warndlg('You did not selected any file ') ; % fille is not selected
end
 [fpath, fname, fext]=fileparts(file);
 validex=({'.bmp','.jpg','.jpeg','.png'});
 found=0;
 for (x=1:length(validex))
 if (strcmpi(fext,validex{x}))
     found=1;
    set(handles.path,'Enable','on');
set(handles.save,'Enable','on');
set(handles.s1,'Enable','on');
set(handles.s2,'Enable','on');
set(handles.s3,'Enable','on');
set(handles.s4,'Enable','on');
set(handles.s5,'Enable','on');
set(handles.s6,'Enable','on');
set(handles.s7,'Enable','on');
set(handles.s8,'Enable','on');
set(handles.s9,'Enable','on');
set(handles.slider1,'Enable','on');
set(handles.slider2,'Enable','on');
set(handles.slider3,'Enable','on');
set(handles.slider4,'Enable','on');
set(handles.slider5,'Enable','on');
set(handles.slider5,'Enable','on');
set(handles.rv,'Enable','on');
set(handles.gv,'Enable','on');
set(handles.bv,'Enable','on');
set(handles.cv,'Enable','on');
set(handles.bbv,'Enable','on');
set(handles.reset,'Enable','on');
set(handles.p1,'Enable','on');
set(handles.info,'Enable','on');
set(handles.BLK,'Enable','on');

     handles.img=imread(image);
handles.i=imread(image);
h = waitbar(0,'Please wait...');
steps = 100;
for step = 1:steps
    % computations take place here
    waitbar(step / steps)
end
close(h) 
 axes(handles.g1); cla; imshow(handles.img);
 axes(handles.g2); cla; imshow(handles.img);
 s=num2str(size(handles.img)); 
 set(handles.path,'String',image);
 guidata(hObject,handles);
break; 
 end
 end
if (found==0)
     errordlg('Selected file does not match available extensions. Please select file from available extensions [ .jpg, .jpeg, .bmp, .png] ','Image Format Error');
end
% Disply image in current axes.

 set(handles.g3,'Visible','on');
set(handles.g4,'Visible','on');
 
% RGB component graph
r=handles.i(:,:,1);
g=handles.i(:,:,2);
b=handles.i(:,:,3);
x=size(r); x=(1:x(1,2));
r=r(1,:); g=g(1,:); b=b(1,:);
axes(handles.g3); plot(x,r,'r');
hold on
plot(x,g,'g'); plot(x,b,'b'); hold off;


updateg4(handles)

% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file path]= uiputfile('*.jpg','Save Image as');
save=[path file]; imwrite(handles.img,save,'jpg');

function path_Callback(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path as text
%        str2double(get(hObject,'String')) returns contents of path as a double

% --- Executes during object creation, after setting all properties.
function path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(hObject,'Value');
r=handles.img(:,:,1);
g=handles.img(:,:,2); b=handles.img(:,:,3);
r1=r+x; rcon=cat(3,r1,g,b);
axes(handles.g2); cla; imshow(rcon)
set(handles.rv,'String',num2str(x));
handles.img=rcon;
r=handles.img(:,:,1);
g=handles.img(:,:,2);
b=handles.img(:,:,3);
x=size(r); x=(1:x(1,2));
r=r(1,:); g=g(1,:); b=b(1,:);
axes(handles.g4); plot(x,r,'r');
hold on
plot(x,g,'g'); plot(x,b,'b'); hold off;

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function rv_Callback(hObject, eventdata, handles)
% hObject    handle to rv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rv as text
%        str2double(get(hObject,'String')) returns contents of rv as a double

% --- Executes during object creation, after setting all properties.
function rv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x=get(hObject,'Value');
r=handles.img(:,:,1);
g=handles.img(:,:,2); b=handles.img(:,:,3);
g1=g+x; gcon=cat(3,r,g1,b);
axes(handles.g2); cla; imshow(gcon)
set(handles.gv,'String',num2str(x));
handles.img=gcon;

updateg4(handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function gv_Callback(hObject, eventdata, handles)
% hObject    handle to gv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gv as text
%        str2double(get(hObject,'String')) returns contents of gv as a double

% --- Executes during object creation, after setting all properties.
function gv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(hObject,'Value');
r=handles.img(:,:,1);
g=handles.img(:,:,2); b=handles.img(:,:,3);
b1=b+x; bcon=cat(3,r,g,b1);
axes(handles.g2); cla; imshow(bcon)
set(handles.bv,'String',num2str(x));
handles.img=bcon;
updateg4(handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function bv_Callback(hObject, eventdata, handles)
% hObject    handle to bv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bv as text
%        str2double(get(hObject,'String')) returns contents of bv as a double

% --- Executes during object creation, after setting all properties.
function bv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(hObject,'Value');
img=handles.img;
img=img.*x;
axes(handles.g2); cla; imshow(img)
set(handles.cv,'String',num2str(x));
handles.img=img;
updateg4(handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function cv_Callback(hObject, eventdata, handles)
% hObject    handle to cv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cv as text
%        str2double(get(hObject,'String')) returns contents of cv as a double

% --- Executes during object creation, after setting all properties.
function cv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=get(hObject,'Value');
img=handles.img;
img=img+x;
axes(handles.g2); cla; imshow(img)
set(handles.bbv,'String',num2str(x));
handles.img=img;
updateg4(handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function bbv_Callback(hObject, eventdata, handles)
% hObject    handle to bbv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bbv as text
%        str2double(get(hObject,'String')) returns contents of bbv as a double

% --- Executes during object creation, after setting all properties.
function bbv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bbv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img=handles.i;
axes(handles.g2); cla; imshow(handles.img);
updateg4(handles);
s=num2str(size(handles.img)); 
guidata(hObject,handles);

% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rrv=(get(hObject,'Value'));
handles.rot=handles.img;
handles.rot=imrotate(handles.rot,rrv);
axes(handles.g2); cla; imshow(handles.rot);
guidata(hObject,handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function rrv_Callback(hObject, eventdata, handles)
% hObject    handle to rrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rrv as text
%        str2double(get(hObject,'String')) returns contents of rrv as a double

% --- Executes during object creation, after setting all properties.
function rrv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rrv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = waitbar(0,'Please wait...');
steps = 100;
for step = 1:steps
    % computations take place here
    waitbar(step / steps)
end
close(h) 
imageinfo(handles.file);

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in info.
function info_Callback(hObject, eventdata, handles)
% hObject    handle to info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = waitbar(0,'Please wait...');
steps = 100;
for step = 1:steps
    % computations take place here
    waitbar(step / steps)
end
close(h) 
imageinfo(handles.g2);

% --------------------------------------------------------------------
function ex_Callback(hObject, eventdata, handles)
% hObject    handle to ex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;

% --- Executes on button press in BLK.
function BLK_Callback(hObject, eventdata, handles)
% hObject    handle to BLK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.g2); 
imshow(rgb2gray(handles.img));
axes(handles.g4);
imhist(handles.img);
guidata(hObject,handles);
