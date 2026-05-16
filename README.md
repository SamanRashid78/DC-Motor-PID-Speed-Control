# DC Motor Speed Control (PID Controller)
A MATLAB project modelling a DC motor as a transfer function and designing a PID controller to regulate its speed. Performance is evaluated through step response analysis and compared against the uncontrolled open-loop system.

## What This Project Does
In real motor control systems, an untuned motor responds slowly and imprecisely to speed commands. This project models a DC motor using a first-order transfer function, then designs a PID controller to improve response speed, reduce overshoot, and eliminate steady-state error, all verified through step response plots.

## How It Works
1. DC motor modelled as a first-order transfer function G(s) = K/(τs + 1)
2. Open-loop step response plotted as an uncontrolled baseline
3. PID controller designed manually with tuned Kp, Ki, Kd gains
4. Closed-loop step response compared against open-loop on a single plot
5. Effect of varying Kp demonstrated across four gain values
6. Performance metrics extracted: overshoot, settling time, rise time

## Results
- **Overshoot:** 0.0%
- **Settling time:** 6.33 s
- **Rise time:** 1.65 s
- **Steady-state:** 1.000
- **Peak:** 1.000

## Files
```
dc-motor-pid-speed-control/
├── motorModel.m        ← plant transfer function, open-loop step response
├── pidManual.m         ← PID design and closed-loop step response
├── compareResponse.m   ← open-loop vs PID on a single plot
├── gainEffect.m        ← effect of varying Kp on system response
├── metrics.m           ← prints overshoot, settling time, rise time
├── figures.pdf           ← annotated screenshots with descriptions
└── README.md
```
## How to Run
1. Run `motorModel.m` to see the uncontrolled motor response
2. Run `pidManual.m` to apply the PID controller
3. Run `compareResponse.m` for the before/after comparison plot
4. Run `gainEffect.m` to see how Kp affects the response
5. Run `metrics.m` to print performance numbers in the command window

## Tools Used
- MATLAB R2014a
- Control System Toolbox 9.7 (`pid`, `tf`, `feedback`, `stepinfo`)

## What I Learned
- How to model a physical system (DC motor) as a transfer function
- How each PID gain (Kp, Ki, Kd) affects system response — overshoot, speed, and steady-state error
- How to extract and interpret performance metrics from step response data
- Why closed-loop control is necessary in real-world motor applications
