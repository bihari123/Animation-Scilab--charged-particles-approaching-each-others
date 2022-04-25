clc()
clear()
x=0:0.5:10;
p=length(x)
y=zeros(p)
disp(p)
for i=1:p
   
   if  i < 5 then
       y(i)=x(i);
       
   else
      y(i)=x(i)^2;
       
     
   end

end
  plot2d(x,y)
disp(y) ;
      

