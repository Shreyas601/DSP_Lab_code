%2
a = 1+mod(236,3);
t = -5:0.01:5;
subplot(2,2,1);
x = @(t)(expo(t,a));
plot(t,x(t));
subplot(2,2,2);
plot(t,x(-t));
subplot(2,2,3);
plot(t,x(t - 1.5.*a));
subplot(2,2,4);
plot(t,x(2.*a.*t));
function x = expo(t, a)
x= exp(-a.*t);
end