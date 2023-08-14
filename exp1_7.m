%7th
load("ConvFile2.txt");
[y,Fs] = audioread('track002.wav');
C = conv2(ConvFile2,y);
filename = 'exp1_4.wav';
audiowrite(filename,C,Fs);
[C,Fs] = audioread('exp1_4.wav');

[y4,Fs]=audioread('exp1_4.wav');
t=linspace(0,length(y4)/Fs,length(y4));
Nfft=16777216; %power of 2 and I put a huge number so there are many data point
f=linspace(0,Fs,Nfft);
X1=abs(fft(y4,Nfft));
figure(1);
plot(f(1:Nfft/2),X1(1:Nfft/2))
xlabel('Frequency'); 
ylabel ('amp');
title ('FFT Spectrum');

[y,Fs]=audioread('Track002.wav');
t=linspace(0,length(y)/Fs,length(y));
Nfft=16777216; %power of 2 and I put a huge number so there are many data point
f=linspace(0,Fs,Nfft);
X1=abs(fft(y,Nfft));
figure(2);
plot(f(1:Nfft/2),X1(1:Nfft/2))
xlabel('Frequency'); 
ylabel ('amp');
title ('FFT Spectrum');
[y, Fs] = audioread('exp1_4.wav');
sound(y, Fs);