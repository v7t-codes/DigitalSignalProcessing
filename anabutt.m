ws=12; 
wp=5; 
rp=2; 
rs=25;
%butterworth
[n, wn]=buttord(wp,ws,rp,rs,'s');
[b,a]= butter(n,wn,'s');
w =0:25;
H=freqs(b,a,w);
plot(w,20*log10(abs(H)));
%chebyshev
ws1=1; 
wp1=1.3; 
rp1=2; 
rs1=20;
[n1 wn1]=cheb1ord(wp1,ws1,rp1,rs1,'s');
[b1, a1]= cheby1(n1,rp1,wn1,'s');
w1=0:4*ws;
H=freqs(b1,a1,w1);
figure(2);
plot(w1,20*log10(abs(H)));