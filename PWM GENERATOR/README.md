# PWM Generator in Verilog

## Overview

This project implements a Pulse Width Modulation (PWM) Generator using Verilog HDL. The design generates a periodic PWM signal with a configurable duty cycle.

## Features

- Verilog HDL implementation
- Configurable PWM duty cycle
- Fixed-frequency PWM generation
- Testbench for functional verification
- Simulation waveform and expected output

## Inputs

- `clk` - System clock
- `reset` - Reset signal
- `duty_cycle` - Controls the PWM duty cycle

## Output

- `pwm_out` - Generated PWM signal

## Duty Cycle

| Duty Cycle | PWM Output |
|------------|------------|
| 0%         | Always LOW |
| 25%        | 25% HIGH, 75% LOW |
| 50%        | 50% HIGH, 50% LOW |
| 75%        | 75% HIGH, 25% LOW |
| 100%       | Always HIGH |

## Tools Used

- Verilog HDL
- ModelSim / Vivado / Icarus Verilog
- GTKWave

## Project Files

- `pwm_generator.v` - PWM generator design
- `pwm_generator_tb.v` - Testbench
- `simulation/waveform.png` - Simulation waveform
- `simulation/output.log` - Simulation output

## Simulation

The testbench verifies PWM generation at different duty-cycle settings and confirms the corresponding output waveform.

