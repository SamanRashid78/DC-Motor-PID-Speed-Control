%Data
info = stepinfo(sys_cl);

fprintf('PID Performance Metrics\n');
fprintf('Overshoot:      %.1f%%\n',  info.Overshoot);
fprintf('Settling time:  %.2f s\n',  info.SettlingTime);
fprintf('Rise time:      %.2f s\n',  info.RiseTime);
fprintf('Peak:           %.3f\n',    info.Peak);
fprintf('Steady-state:   %.3f\n',    dcgain(sys_cl));
