%tic;
clc;
% Intialisation
% AF= zeros(1,360)
% AE=zeros(1,360)
lamda=input('enter the value of wavelength= ');
N=input('enter the no of elements= ');
alpha=input('enter the value of progressive phase difference= ');
d=input('enter the seperation distance between the element in lamda= ');
k=(360/lamda);
theta=1:360;
psi=alpha+k.*d.*cosd(theta);
AF=(1+exp(1j.*(deg2rad(psi)))).^(N-1);
AE=(cosd(90.*cosd(theta)))./sind(theta);
AF=abs(AF);
%PLOTTING....
theta=linspace(0,2*pi,360);
subplot(2,2,1)
polarplot(theta,AE,'b--o')
subplot(2,2,2)
polarplot(theta,AF,'r:hexagram')
subplot(2,2,[3,4])
polarplot(theta,AE.*AF,'m-.diamond')
legend('Binomial Antenna Array', 'Location','SouthEastOutside')
toc;