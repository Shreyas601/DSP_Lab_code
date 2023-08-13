a = 1+mod(236,3);
y1 = sin(2.*pi.*t.*261.626);
y2 = sin(2.*pi.*t.*294.33);
y3 = sin(2.*pi.*t.*327.03);
y4 = sin(2.*pi.*t.*348.83);
y5 = sin(2.*pi.*t.*392.44);
y6 = sin(2.*pi.*t.*436.04);
y7 = sin(2.*pi.*t.*490.55);
y8 = sin(2.*pi.*t.*523.25);
Fs = 1000;
T = 1/Fs;
L = 5000;
t = (0:L-1)*T;
y = y1+y2+y3+y4+y5+y6+y7+y8;
y_normalized = y/(max(abs(y)));
audiowrite("music.wav",y_normalized,Fs);