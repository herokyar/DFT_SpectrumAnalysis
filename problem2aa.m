  format compact, subplot (111) 
  a (1:31)=ones ; a (22:256)= zeros;
 
  [X, W] = DTFT1( a, 256); axis([0  pi/2  0  5]) % the matlab file containing the function dtft
  
  subplot (311), plot ( W / 2 / pi, abs(X) );  
     grid, title (' MAGNITUDE RESPONSE Length=21 - 256 points') 
      xlabel (' NORMALIZED FREQUENCY'), ylabel (' | H(w) | ') 

      subplot (312), stem ( W / 2 / pi, abs(X) ); grid, 
  title (' IMPULSE RESPONSE ') 
      xlabel (' Index(n)'), ylabel (' h(n) ') 
      
      subplot (313), plot( W / 2 / pi, 180 / pi * angle(X) );  
      grid, xlabel(' NORMALIZED FREQUENCY'), ylabel (' DEGREES ') 
      title(' PHASE RESPONSE ')