J = 10;
b = 5;
R = 5;
L = 0.01;
K = 1;
%%
figure 
plot(t,w_S); grid;
ylabel('Angular Velocity w(S)'); xlabel('Time (t)');
legend('w(S)');
title('Step response of the angular speed of Motor');