% PID Controller (manual tuning)
Kp = 5;    
Ki = 2;    
Kd = 0.1; 

C = pid(Kp, Ki, Kd);      

sys_cl = feedback(C*G, 1);

% Plot
figure;
step(sys_cl);
title('Closed-loop step response (manual PID)');
grid on;

info = stepinfo(sys_cl);
fprintf('Overshoot:      %.1f%%\n', info.Overshoot);
fprintf('Settling time:  %.2f s\n', info.SettlingTime);
fprintf('Rise time:      %.2f s\n', info.RiseTime);