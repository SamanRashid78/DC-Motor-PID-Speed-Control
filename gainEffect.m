%Tuning Effect
figure; hold on;

Kp_values = [1, 5, 10, 20];
colors = {'r','b','g','m'};

for i = 1:length(Kp_values)
    C_temp   = pid(Kp_values(i), Ki, Kd);
    sys_temp = feedback(C_temp*G, 1);
    step(sys_temp, colors{i});
end

hold off;

%Plot
legend('Kp=1','Kp=5','Kp=10','Kp=20');
title('Effect of proportional gain Kp on step response');
grid on;