  format compact, subplot (111) 
  a (1:61)=ones ; a (62:256)= zeros;
 
  [X, W] = dtft ( a, 256); axis([0  pi/2  0  5]) % the matlab file containing the function dtft
  subplot (211), stem ( W / 2 / pi, abs(X) );  
     grid, title (' MAGNITUDE RESPONSE') 
      xlabel (' NORMALIZED FREQUENCY'), ylabel (' | H(w) | ') 
   subplot (212), stem( W / 2 / pi, 180 / pi * angle(X) );  
      grid, xlabel(' NORMALIZED FREQUENCY'), ylabel (' DEGREES ') 
      title(' PHASE RESPONSE ')
      
axis([h1 h2],'square')
