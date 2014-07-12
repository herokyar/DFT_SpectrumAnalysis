close all
% Rect window
N=31;
kw1=blackman(N);
[h,omega2]=freqz(kw1,1,256);% frequency response of the window
mag2= (abs(h)); %DB magnitude0
% hanning window
kw2=hanning(N);
[h,omega3]=freqz(kw2,1,256);% frequency response of the window

mag3= (abs(h)); %DB magnitude

% hamming window
kw3=hamming(N);
[h,omega4]=freqz(kw3,1,256);% frequency response of the window

mag4= (abs(h)); %DB magnitude

 subplot (221), plot ( omega2/pi,mag2,'c' );  
     grid, title (' MAGNITUDE RESPONSE of blackman Length = 31') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 

  
 subplot (222), plot ( omega3/pi,mag3,'m');  
     grid, title (' MAGNITUDE RESPONSE of hanning Length=31 ') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 

   subplot (223), plot ( omega4/pi,mag4,'b');  
     grid, title (' MAGNITUDE RESPONSE of hamming Length=31 ') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 

subplot (224)  
    plot(omega2/pi,mag2,'c',omega3/pi,mag3,'m',omega4/pi,mag4,'b'), grid;
        , title (' MAGNITUDE RESPONSE of blackman, hanning, and  hamming ') 
        xlabel('Normalized frequency')
        ylabel('|H(w)|')
figure
         subplot (221), plot (n,abs(kw1),'c'); 
     grid, title ('Blackman Window') 
      xlabel (' n'),  ylabel('w[n]')
  
 subplot (222), plot (n,abs(kw2),'m');
     grid, title (' Hanning Window') 
      xlabel (' n'),  ylabel('w[n]')

   subplot (223),plot (n,abs(kw3),'b');
     grid, title (' Hamming Window ') 
      xlabel (' n'),  ylabel('w[n]') 

  subplot (224),
    plot(n,abs(kw1),'c',n,abs(kw2),'m',n,abs(kw3),'b'), grid;
         title ('  blackman, hanning, and  hamming window ') 
        xlabel('n')
        ylabel('w[n]')

        
