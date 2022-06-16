function varargout = gui(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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

function gui_OpeningFcn(hObject, ~, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);
ylim(handles.ax1,[0,10])
xlim(handles.ax1,[0,10])
hold on
plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);

function varargout = gui_OutputFcn(~, ~, handles) 
varargout{1} = handles.output;

function PopUpMenuNoSources_Callback(~, ~, handles)

sources = handles.PopUpMenuNoSources.String;
sourceIndex = handles.PopUpMenuNoSources.Value;
nrSources = str2double(sources{sourceIndex});

structures = handles.PopUpMenuStructures.String;
structuresIndex = handles.PopUpMenuStructures.Value;
Structure = structures{structuresIndex};

if(nrSources==1)
    cla
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
end
if(nrSources==2)
    cla
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
end
if(nrSources==3)
    cla
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
end
if(nrSources==4)
    cla
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
end
if(strcmp(Structure,'Wall'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    end
    hold on
    line([7,3], [3.75,3.75], 'Color', 'r');
end
if(strcmp(Structure,'Circle'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
end
if(strcmp(Structure,'None'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    end
end

function PopUpMenuNoSources_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function btn2D_Callback(~, ~, handles)
Lx = 10;
Ly = Lx;
dx = 0.05;
dy = dx;
nx = fix(Lx/dx);
ny = fix(Ly/dy);

x = linspace(0,Lx,nx);
y = linspace(0,Ly,ny);

times=handles.popUpTime.String;
timeIndex = handles.popUpTime.Value;
T = str2double(times{timeIndex});

sources = handles.PopUpMenuNoSources.String;
sourceIndex = handles.PopUpMenuNoSources.Value;
nrSources = str2double(sources{sourceIndex});


structures = handles.PopUpMenuStructures.String;
structuresIndex = handles.PopUpMenuStructures.Value;
Structure = structures{structuresIndex};

maxValues = handles.PopUpMaxValue.String;
maxValueIndex = handles.PopUpMaxValue.Value;
maxValue = str2double(maxValues{maxValueIndex});

minValues = handles.PopUpMin.String;
minValueIndex = handles.PopUpMin.Value;
minValue = str2double(minValues{minValueIndex});

frequencyValues = handles.PopUpMenuFrequency.String;
frequencyIndex = handles.PopUpMenuFrequency.Value;
frequency = str2double(frequencyValues{frequencyIndex});

amplitudes = handles.PopUpMenuAmplitude.String;
amplitudesIndex = handles.PopUpMenuAmplitude.Value;
Amplitude = str2double(amplitudes{amplitudesIndex});

wn = zeros(nx,ny);
wnm1 = wn;
wnp1 = wn;

c=1;
CFL = 0.5;
dt = CFL*dx/c;
t = 0;
T=T*(1/c)*CFL;
cla
while(t<T)
    
    cla
    wn(:,[1 end])=0;
    wn([1 end],:)=0;
    t=t+dt;
    
    wnm1=wn;
    wn=wnp1;
    if(nrSources==1)
        wn(100,100) = Amplitude*sin(2*frequency*2*pi*t);
    end
    if(nrSources==2)
        wn(50,50) = Amplitude*sin(2*frequency*2*pi*t);
        wn(150,150) = Amplitude*sin(2*frequency*2*pi*t);
    end
    if(nrSources==3)
        wn(50,50) = Amplitude*sin(2*frequency*2*pi*t);
        wn(150,150) = Amplitude*sin(2*frequency*2*pi*t);
        wn(100,100) = Amplitude*sin(2*frequency*2*pi*t);
    end
    if(nrSources==4)
        wn(50,50) = Amplitude*sin(2*frequency*2*pi*t);
        wn(150,150) = Amplitude*sin(2*frequency*2*pi*t);
        wn(50,150) = Amplitude*sin(2*frequency*2*pi*t);
        wn(150,50) = Amplitude*sin(2*frequency*2*pi*t);
    end
    if(strcmp(Structure,'Wall'))
        wn(75,60:140)=0;
    end
    if(strcmp(Structure,'Circle'))
        r=30;
        center_x=100;
        center_y=100;
        if(nrSources==1)
            center_y=140;
            center_x=100;
        end
        if(nrSources==3)
            center_y=140;
            center_x=100;
        end
        for b=1:nx-1
            for a=1:ny-1
                if(((a-center_x)*(a-center_x)+(b-center_y)*(b-center_y))<=(r*r))
                    wn(a,b)=0;
                end
            end 
        end
    end
    for i=2:nx-1
        for j=2:ny-1
        wnp1(i,j) = 2*wn(i,j) - wnm1(i,j) + CFL^2 *(wn(i+1,j) +wn(i,j+1) - 4*wn(i,j) + wn(i-1,j) + wn(i,j-1));
        end
    end
    imagesc(handles.ax1,x,y,wn);colorbar();caxis([minValue maxValue])
    colormap(jet(512))
    if(strcmp(Structure,'Wall'))
    hold on
    line([7,3], [3.75,3.75], 'Color', 'r');
    end
    if(strcmp(Structure,'Circle'))
        if(nrSources==1)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 7+1i*5;
        plot(real(f), imag(f));
        end
        if(nrSources==2)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
        if(nrSources==3)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 7+1i*5;
        plot(real(f), imag(f));
        end
        if(nrSources==4)
        hold on
        th = 0:pi/100:2*pi;
        f = 1.5 * exp(1i*th) + 5+1i*5;
        plot(real(f), imag(f));
        end
    end
    title(handles.ax1,sprintf('t=%.2f',t*c*(1/CFL)))
    pause(0.005);     
end

function popUpTime_Callback(~, ~, ~)

function popUpTime_CreateFcn(hObject,~,~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PopUpMenuStructures_Callback(~,~,handles)

sources = handles.PopUpMenuNoSources.String;
sourceIndex = handles.PopUpMenuNoSources.Value;
nrSources = str2double(sources{sourceIndex});


structures = handles.PopUpMenuStructures.String;
structuresIndex = handles.PopUpMenuStructures.Value;
Structure = structures{structuresIndex};

if(strcmp(Structure,'Wall'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    end
    hold on
    line([7,3], [3.75,3.75], 'Color', 'r');
end
if(strcmp(Structure,'Circle'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 7+1i*5;
    plot(real(f), imag(f));
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    hold on
    th = 0:pi/100:2*pi;
    f = 1.5 * exp(1i*th) + 5+1i*5;
    plot(real(f), imag(f));
    end
end
if(strcmp(Structure,'None'))
    cla
    if(nrSources==1)
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==2)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==3)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,5, 5, 'bo', 'MarkerSize', 5);
    end
    if(nrSources==4)
    plot(handles.ax1,7.5, 7.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,7.5, 2.5, 'bo', 'MarkerSize', 5);
    plot(handles.ax1,2.5, 7.5, 'bo', 'MarkerSize', 5);
    end
end

function PopUpMenuStructures_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PopUpMaxValue_Callback(~, ~, ~)

function PopUpMaxValue_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PopUpMin_Callback(~, ~, ~)

function PopUpMin_CreateFcn(hObject, ~, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PopUpMenuFrequency_Callback(hObject, eventdata, handles)

function PopUpMenuFrequency_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PopUpMenuAmplitude_Callback(hObject, eventdata, handles)

function PopUpMenuAmplitude_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
