x= input('seq');
N= length(x);
fx = fft(x,N);
mag= abs(fx);
phs= angle(fx);
n= 0:N-1;
stem(n,mag);
figure(2);
stem(n, phs);
