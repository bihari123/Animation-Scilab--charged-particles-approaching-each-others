clear;
clc()
clf;
a1=0;
b1=0;
k1=1;

a2=99;
b2=99;
k2=1;



x=linspace(-100,100,50);
y=x;
xx=0;
yy=0;
function [xx,yy]=cal(a,b,k,x,y)
p=length(x);
r=length(y);
for i=1:p;
    if (x(i)~=(a2) & x(i)~=(a1)) then
        for j=1:r;
            if(y(j)~=(b1) & y(j)~=(b2))
                c=k/(((x(i)-a)^2)+((y(j)-b)^2))^3/2;
                xx(i,j)=(x(i)-a)*c;
                yy(i,j)=(y(j)-b)*c;
        end
    end
end
end
endfunction



[xx1,yy1]=cal(a1,b1,k1,x,y);
[xx2,yy2]=cal(a2,b2,k2,x,y);
//champ1(x,y,xx1+xx2,yy1+yy2,arfact=0.4);
//h_compound = gce();
//h_compound.children.mark_size = 20;
//h_compound.children.mark_background = 2;
//h_axes = gca();
//h_axes.data_bounds = [-100,-100;100,100];

// Animation Loop
i = 1;
while i<a2 & i>a1 &i<b2 &i>b1
    
    drawlater();
    clf
   // h_compound.children.data = [xx1(i)+xx2(i),yy1(i)+yy2(i)];
   disp(a2-i)
     [xx2,yy2]=cal(a2-i,b2-i,k2,x,y);
      champ1(x,y,xx1+xx2,yy1+yy2,arfact=0.4);
    drawnow();
   i = i+1;
end
