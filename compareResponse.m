%Uncontrolled vs PID
figure;
hold on;
step(G,       'r--');   
step(sys_cl,  'b-');    
hold off;

% Plot
legend('No controller (open-loop)', 'With PID controller');
title('Step response: open-loop vs PID controlled');
grid on;