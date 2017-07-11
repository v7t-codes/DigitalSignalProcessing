function[y,n] = wavgen(a,b,c)
%UNIT IMPULSE 
%UNIT STEP 
%UNIT RAMP 
%REAL EXP
%COMPLEX EXP
%SINE
n = a:b;
imp = (n-c)==0; 
subplot(3,2,1)
stem(n, imp)

step = (n-c)>=0;
subplot(3,2,2)
stem(n,step)

ramp = ((n-c)>=0).*(n-c);
subplot(3,2,3)
stem(n,ramp)

rex = exp(c*n);
subplot(3,2,4)
stem(n,rex)

cex = exp(j*c*n);
subplot(3,2,5)
stem(n, abs(cex))

sine = sin(2*pi*c*n);
subplot(3,2,6)
stem(n, sine)