x=input('seq1');
h=input('seq2');
n1= length(x);
n2 = length(h);
n= max(n1,n2);
x=[x zeros(n-n1)];
h=[h zeros(n-n2)];
y = circular(x,h,n);
ny = 1:n;
stem(ny,y);
xlabel('time');
ylabel('amp');
title('circular conv bitch')