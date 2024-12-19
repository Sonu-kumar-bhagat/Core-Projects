clc;
lamda=input('enter the value of wavelength= ');
a=input('enter the loop radius a= ');
beta=(2*pi/lamda);
theta=pi/100:pi/100:2*pi;
E1=besselj(1,beta*a.*sin(theta));
polarplot(theta,E1,'r-*')
hold on
E2=besselj(-1,beta*a.*sin(theta));
polarplot(theta,E2,'r-*')
hold off