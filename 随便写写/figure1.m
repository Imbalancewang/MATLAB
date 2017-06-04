function createfigure(X1, X2, Y1, X3, Y2)
%CREATEFIGURE(X1, X2, Y1, X3, Y2)
%  X1:  vector of x data
%  X2:  vector of x data
%  Y1:  vector of y data
%  X3:  vector of x data
%  Y2:  vector of y data

%  Auto-generated by MATLAB on 24-May-2017 20:24:29

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YTick',0,'XTick',0,'FontSize',16);
box(axes1,'on');
grid(axes1,'on');
hold(axes1,'on');

% Create plot
plot(X1,X1);

% Create plot
plot(X2,Y1);

% Create plot
plot(X3,Y2);

% Create xlabel
xlabel('M');

% Create ylabel
ylabel('Y(M)');

% Create title
title('M-Y(M)');

% Create line
annotation(figure1,'line',[0.43984375 0.44296875],...
    [0.688119170984456 0.110535405872193],'LineStyle','--');

% Create line
annotation(figure1,'line',[0.12890625 0.4390625],...
    [0.681210708117444 0.687392055267703],'LineStyle','--');

% Create textbox
annotation(figure1,'textbox',...
    [0.42678125 0.00718132854578097 0.0365 0.0951526032315979],'String','M1',...
    'LineStyle','none',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create line
annotation(figure1,'line',[0.75 0.74921875],...
    [0.834924006908463 0.105924596050269],'LineStyle','--');

% Create textbox
annotation(figure1,'textbox',...
    [0.74921875 -0.00718132854578105 0.03571875 0.11310592459605],'String','M2',...
    'LineStyle','none',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create line
annotation(figure1,'line',[0.75 0.12421875],...
    [0.835624775583483 0.824057450628366],'LineStyle','--');

% Create textbox
annotation(figure1,'textbox',...
    [0.09296875 0.82585278276481 0.046875 0.0341113105924611],'String','Y2',...
    'LineStyle','none',...
    'FontSize',16,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.09296875 0.594254937163375 0.05915625 0.122082585278277],'String','Y1',...
    'LineStyle','none',...
    'FontSize',16,...
    'FitBoxToText','off');

