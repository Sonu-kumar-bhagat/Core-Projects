clc;
lamda=input('enter the value of wavelength= ');
l=input('enter your monopole length l= ');
ratio=l/lamda;
B=(2*pi/lamda);
theta=-pi/2:pi/100:pi/2;
if ratio<=0.1
E=sin(theta);
En=abs(E);
polar(theta,En)
else
f1=cos(B*1/2.*cos(theta));
f2=cos(B*1/2);
f3=sin(theta);
E=(f1-f2)./f3;
En=abs(E);
polar(theta,En)
end