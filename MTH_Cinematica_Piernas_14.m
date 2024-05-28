clear all
close all
clc

H0=SE3([0 3 3]);
H1=SE3(rotz(-pi/2), [0 3 3]);

H2=SE3([3 0 0]);
H3=SE3([0 0 -3]);
H4=SE3([0 1 0]);
H5=SE3([0 1 0]);

H20= H1*H2;
H30= H20*H3;4
H40= H30*H4;
H50= H40*H5;

x=[0 0 0 3];
y=[3 0 0 0];
z=[3 3 0 0];

plot3(x, y, z,'LineWidth', 1.5); axis([-1 3 -1 3 -1 3]); grid on;
hold on;

trplot(H0,'rgb','axis', [-1 3 -1 3 -1 3]);

pause;
tranimate(H0, H1,'rgb','axis', [-1 3 -1 3 -1 3]);

pause;
tranimate(H1, H20,'rgb','axis', [-1 3 -1 3 -1 3]);

pause;
tranimate(H20, H30,'rgb','axis', [-1 3 -1 3 -1 3]);
disp(H30);

pause;
tranimate(H30, H40,'rgb','axis', [-1 3 -1 3 -1 3]);
disp(H40);

pause;
tranimate(H40, H50,'rgb','axis', [-1 3 -1 3 -1 3]);
disp(H50);
