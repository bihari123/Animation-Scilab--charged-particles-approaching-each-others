clear();
x=0.01:0.05:1;
i=[0.01 0.05 0.1 0.2 0.3 0.5 0.9 1 2 3];

for j=i
    y=j*[(1-x)^(j-1)];
    plot2d1("enl",x,y);
  
     
  end
   xtitle ( "Oxidation Process Simulation", "Fraction solidified" , "Cs/Co "  );
  





 
