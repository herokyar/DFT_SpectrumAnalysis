close all
% Rect window
N=31;
kw1=blackman(N);
[h,omega21]=freqz(kw1,1,256);% frequency response of the window
mag21= (abs(h)); %DB magnitude
n=0:1:N-1;
% hanning window
N=31;
kw2=hanning(N);
[h,omega3]=freqz(kw2,1,256);% frequency response of the window
mag3= (abs(h)); %DB magnitude
 
% hamming window
N=31;
kw3=hamming(N);
[h,omega4]=freqz(kw3,1,256);% frequency response of the window 
mag4= (abs(h)); %DB magnitude
 
 subplot (221), plot ( omega21/pi,mag21,'c' );  
     grid, title (' MAGNITUDE RESPONSE of blackman Length = 31') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 
 
  
 subplot (222), plot ( omega3/pi,mag3,'m');  
     grid, title (' MAGNITUDE RESPONSE of hanning Length=31 ') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 
 
   subplot (223), plot ( omega4/pi,mag4,'b');  
     grid, title (' MAGNITUDE RESPONSE of hamming Length=31 ') 
      xlabel (' Normalized frequency'), ylabel (' | H(w) | ') 
 
subplot (224)  
    plot(omega21/pi,mag21,'c',omega3/pi,mag3,'m',omega4/pi,mag4,'b'), grid;
         title (' MAGNITUDE RESPONSE of blackman, hanning, and  hamming ') 
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
%%
%problem 2
clear all;
close all;
  format compact, subplot (111) 
  a (1:21)=ones ; a (22:256)= zeros;
 
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
%%
w1 = 2*pi/14;
w2 = 2*pi/7;
N=64;
n = 0:N-1;
y = cos(w1*n) + 0.5*cos(w2*n);
wy = y'.*hamming(N);
figure(1)
plot(n,y,'r-',n,wy,'b'),grid, xlabel('time index, n'), title ('original and windowed data  w2= 2pi/13 N=265')
 
 
figure(2)
[Y,W] = DTFT1 (y,500);
subplot(211),plot(W,20*log10(abs(Y))),axis([0 pi -20 50]),grid, ylabel ('mag in dB')
title('DFT of Original Data   w2= 2pi/13')
[WY,W] = DTFT1(wy,500);
subplot(212),plot(W,20*log10(abs(WY))),axis([0 pi -30 40]),grid, xlabel('freq(w)')
ylabel('mag in dB'), title('DFT of Windowed Data   w2= 2pi/13')
