L_total=.04;
n=5;
T(1)=0;
T(n+1)=30;
Hg=5000000;
k=28;
h=45;
m=1000;
dx=L_total/(n-1);
for i=1:n
T(i)=0;
for j=0:m
 for i=2:n-1
 T(i)=(((Hg*dx*dx)/(2*k))+((T(i-1)+T(i+1))/2));
 end
 T(n)=((((k*T(n-1))/dx)+(h*T(n+1))+(Hg*(dx/2)))*(dx/(k+(dx*h))));
end
end
L=0: .01 :.05;
disp(T);
figure(1)
plot(L,T,'x','color','b','markersize',5,'linewidth',5)
xlim([0 .06])
ylim([0 140])
xlabel('thickness of the plate')
ylabel('temprature')
title('temp vs thickness(POINTS)')