clc;
lamda=input('enter the value of wavelength in meters= ');
N=input('enter the no of elements= ');
alpha=input('enter the value of progressive phase difference= ');
d=input('enter the seperation distance between the element in meter= ');
beta=(2*pi/lamda);
theta=pi/100:pi/100:2*pi;
psi=alpha+beta*d.*cos(theta);
e=sin(N*(psi./2))./sin(psi./2);
polarplot(theta,e/N)