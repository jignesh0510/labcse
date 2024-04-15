clc; close all; clear all
x= 10:10:80;
y= [25 70 380 550 610 1220  830 1450];
scatter (x,y);
p= polyfit(x,y,1);
a0=p(1); a1=p(2);
yy=a1+a0*x
hold on 
plot(x,yy)