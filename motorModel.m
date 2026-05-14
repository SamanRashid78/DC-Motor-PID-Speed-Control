% DC Motor Transfer Function
K   = 1;       
tau = 0.5;     

s = tf('s');                  
G = K / (tau*s + 1);          

%Plot
figure;
step(G);
title('Open-loop step response (no controller)');
grid on;