f=input('Enter the Frequency...........: ');

%k=w;
w=2*pi*f;
V=input('Enter the Current...........: ');
R=input('Enter the Distance between Tx & Rx ...........: ');
m=[0:0.01:2*pi];
v=V*exp(-1i*w*R)/R;
E=abs(v*sin(m));
H= (abs(v*sin(pi/2)))/377;
figure(1)
g=polar(m,E);
g.LineStyle = "-.";
g.Color = 'magenta';
g.Marker = "square";
g.MarkerSize = 8;
title('...............Folded Dipole Antanna E- plane pattern......................')
figure(2)
p=polar(m,H+zeros(size(m)));
p.LineStyle = ":";
p.Color = "red";
p.Marker = "hexagram";
p.MarkerSize = 8;
title('..................Folded Dipole Antanna H- plane pattern.........................')
