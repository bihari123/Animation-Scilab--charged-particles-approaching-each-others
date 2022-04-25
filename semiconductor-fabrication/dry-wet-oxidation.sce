clc();
clear();
t=[9,1.40,0.37,0.076,0.027];
a1=[0.5,0.226,0.11,0.05];
a2=[0.37,0.235,0.165,0.09,0.04];
b1=[0.203,0.287,0.510,0.72];
b2=[0.0011,0.0049,0.0117,0.027,0.045];
c=0.1:20:100;
for i=1:length(c)
 x1(i)=sqrt(((a1(1)^2)/4)+(b1(1)*c(i)))-(a1(1)/2) ;  
 x2(i)=sqrt(((a1(2)^2)/4)+(b1(2)*c(i)))-(a1(2)/2) ;
 x3(i)=sqrt(((a1(3)^2)/4)+(b1(3)*c(i)))-(a1(3)/2) ;
 x4(i)=sqrt(((a1(4)^2)/4)+(b1(4)*c(i)))-(a1(4)/2) ;
 
 y1(i)=sqrt(((a2(1)^2)/4)+(b2(1)*(c(i)+t(1))))-(a2(1)/2) ;
 y2(i)=sqrt(((a2(2)^2)/4)+(b2(2)*(c(i)+t(2))))-(a2(2)/2) ;
 y3(i)=sqrt(((a2(3)^2)/4)+(b2(3)*(c(i)+t(3))))-(a2(3)/2) ;
 y4(i)=sqrt(((a2(4)^2)/4)+(b2(4)*(c(i)+t(4))))-(a2(4)/2) ;
end

subplot(2,1,1);

plot2d1("oll",c,x1,style=[color("green")]);

plot2d("oll",c,x2,style=[color("blue")]);
plot2d("oll",c,x3,style=[color("red")]);
plot2d("oll",c,x4),style=[color("black")];


hl=legend(['800';'920';'1000';'1100'],opt="0");
title("wet oxidation");
ylabel("oxide thickness(micrometer)");
xlabel("Oxidation time(hr)");

subplot(2,1,2)
plot2d("oll",c,y1,style=[color("green")]);
plot2d("oll",c,y2,style=[color("blue")]);
plot2d("oll",c,y3,style=[color("red")]);
plot2d("oll",c,y4,style=[color("black"));
hl=legend(['800';'920';'1000';'1100'],opt="0");
title("dry oxidation");
ylabel("oxide thickness(micrometer)");
xlabel("Oxidation time(hr)");

