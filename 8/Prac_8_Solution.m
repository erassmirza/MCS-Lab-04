clear, clc, close
n=[0 0 30];
d=[1 5 30];
sys=tf(n,d)
t=0:0.001:60;
r=sin(t)+exp(-0.2*t);
y=lsim(sys,r,t);
plot(t,r,'-r',t,y,'--k');
legend('Input','Output')
grid;
title('Response of sysytem G(S)=30/(s^2+5s+30) for input r(t)=sin(t)+exp(-0.2*t)');
xlabel('Time');
ylabel('Amplitude');