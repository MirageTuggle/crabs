function crabs ()

% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth]= drawMap("BGImage.png");

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 45;

xCrab = 950;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 40;
% Draw the captain and initialize graphics handles

%*********************************************************

% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
captainGraphics = drawCapt(xCapt , yCapt , thetaCapt , sizeCapt);

%initial command
cmd="null";

while(cmd !="Q")

%read keyboard

  cmd= kbhit()

if (cmd == "w" ||cmd == "d"||cmd == "a")

    %erase old captain
    for k = 1: length (captainGraphics)
      set (captainGraphics (k), 'Visible', 'off')
    endfor

    [xCapt,yCapt,thetaCapt]= moveCapt(cmd,xCapt,yCapt,thetaCapt);

    captainGraphics = drawCapt(xCapt , yCapt , thetaCapt , sizeCapt);

  endif

endwhile
%*******************************************************

endfunction
