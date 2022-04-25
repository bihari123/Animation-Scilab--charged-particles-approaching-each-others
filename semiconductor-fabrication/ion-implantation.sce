clc();
clear();
x=1:0.5:20;
//r=10;
//u=(2/3)*r;
r=7.5;
u=2.8;
for i=1:length(x)
    y(i)=((5*(10^4))/(sqrt(2*%pi)*u))*exp(-((x(i)-r)^2)/(2*(u^2)));
end
plot2d(x,y)
title("2 dimensional distribution of implanted ions");
xlabel("x");
ylabel("gaussian distriution function n(x)");
