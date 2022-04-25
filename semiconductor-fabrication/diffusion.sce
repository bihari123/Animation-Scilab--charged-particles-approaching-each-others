clear();
x=0:0.5:6;
Dt=[0.1 0.5 1];
p=length(Dt);
for i=1:p
    y=erfc(x/(2*sqrt(Dt(i))));
    z=(1/sqrt(%pi*Dt(i)))*exp(-(x^2)/(4*Dt(i)));
    subplot(2,2,1)
    plot2d1("enl",x,y);
    subplot(2,2,2)
    plot2d(x,y)    
    subplot(2,2,3)
    plot2d1("enl",x,z);
    subplot(2,2,4)
    plot2d(x,z)    
    
  end
   xtitle ( "Diffusion Process Simulation", "Diffusion Depth" , "C/Cs "  );
