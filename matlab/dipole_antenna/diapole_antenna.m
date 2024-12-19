clc;

close all;
% clear all;
theta= 1:1:360;
rad(theta)= (theta*pi)/180; %converting theta in degree to radians
%at L= λ /2
g1=abs((cos((pi.*cos(rad(theta)))/2)/1.*sin(rad(theta))));
polarplot(rad(theta),g1);hold on;
title('RADIATION PATTERN IN DIPOLE ANTENNA');

%at L= λ /4
g2=abs((cos((pi.*cos(rad(theta)))/4)-(cos(pi/4)))/1.*sin(rad(theta)));
polarplot(rad(theta),g2,'r');
hold on;
%at L= λ
g3=abs((cos((pi.*cos(rad(theta))))+1)/1.*sin(rad(theta)));
polarplot(rad(theta),g3,'g');
hold on;

%at L=1.5* λ
g4=abs(((cos((1.5*pi.*cos(rad(theta))))-(cos(1.5*pi)))/1.*sin(rad(theta))));
polarplot(rad(theta),g4,'k');
hold on;