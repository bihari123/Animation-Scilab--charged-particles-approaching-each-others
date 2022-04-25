clc()
clf;
a1=-1;
b1=-1;
k1=1;

a2=1;
b2=1;
k2=1;

a3=-1;
b3=1;
k3=1;

a4=1;
b4=-1;
k4=1;


x=linspace(-3.5,3.5,23);
y=x;
xx=0;
yy=0;
function [xx,yy]=cal(a,b,k,x,y)
p=length(x);
disp(p);
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
[xx3,yy3]=cal(a3,b3,k3,x,y);
[xx4,yy4]=cal(a4,b4,k4,x,y);
fx=xx1+xx2+xx3+xx4;
fy=yy1+yy2+yy3+yy4;
champ1(x,y,fx,fy,arfact=0.4);
