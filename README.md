# 4-Bit ALU Design | RTL to ASIC

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The goal is to explore the digital design and ASIC implementation workflow, from RTL development and functional simulation to logic synthesis and physical design using open-source EDA tools.

The project uses Yosys for logic synthesis and explores OpenLane with the SkyWater SKY130 PDK for ASIC physical implementation.

## Features

- 4-bit arithmetic and logic operations
- Verilog HDL-based RTL design
- Functional simulation and testbench verification
- Waveform analysis using GTKWave
- Logic synthesis using Yosys
- Gate-level netlist generation
- ASIC physical-design exploration using OpenLane
- Open-source EDA workflow on Linux

## ALU Architecture

The ALU accepts two 4-bit input operands and a 2-bit operation selector.

### Inputs

| Signal | Width | Description |
|---|---|---|
| A | 4 bits | First operand |
| B | 4 bits | Second operand |
| OP | 2 bits | Operation selector |

### Outputs

| Signal | Width | Description |
|---|---|---|
| RES | 4 bits | ALU result |
| C | 1 bit | Carry flag |
| Z | 1 bit | Zero flag |
| N | 1 bit | Negative/sign flag |

The operation encoding and status-flag behavior are defined in the Verilog RTL implementation.

## Tools and Technologies

- **Verilog HDL** — RTL design
- **Icarus Verilog** — Functional simulation
- **GTKWave** — Waveform visualization
- **Yosys** — Logic synthesis
- **OpenLane** — ASIC implementation flow
- **SkyWater SKY130 PDK** — Open-source process design kit
- **Ubuntu Linux** — Development environment

## Project Structure

```text
alu4/
├── rtl/
│   └── alu.v
├── tb/
│   └── tb_alu.v
├── syn/
├── alu_pro/
│   └── config.json
├── alu_synth.v
├── alu_synth_graph.dot
├── alu_synth_graph.pdf
├── alu_4bit.ilang
└── README.md


Functional Simulation
The design can be simulated using Icarus Verilog.
Example commands:
iverilog -g2012 -o alu_tb.vvp rtl/alu.v tb/tb_alu.v
vvp alu_tb.vvp

If the testbench generates a VCD waveform, it can be inspected using GTKWave:
gtkwave alu.vcd

The waveform filename depends on the $dumpfile directive in the testbench.
Logic Synthesis
Yosys is used to process the RTL and generate a synthesized netlist.
Example commands:
yosys

Inside the Yosys shell:
read_verilog rtl/alu.v
hierarchy -top alu_4bit
proc
opt
techmap
opt
abc
clean
stat
write_verilog alu_synth.v

The generated netlist and synthesis statistics can be used to examine the hardware inferred from the RTL.
ASIC Physical Design
The project explores an RTL-to-GDSII workflow using OpenLane and the SkyWater SKY130 PDK.
The typical physical-design process includes:
1. RTL validation
2. Logic synthesis
3. Floorplanning
4. Power distribution network generation
5. Placement
6. Clock-tree synthesis, when required
7. Global and detailed routing
8. Design-rule checking
9. GDSII layout generation
The stages completed depend on the current state of the project and the results of the implementation flow.
Learning Objectives
This project provides hands-on experience with:
- Digital logic design and Verilog RTL
- Functional verification and testbench development
- Simulation and waveform debugging
- Logic synthesis and gate-level netlists
- Synthesis statistics and hardware optimization
- ASIC physical-design concepts
- Open-source EDA tools
- RTL-to-GDSII implementation workflows
Project Status
Status: Work in Progress
RTL development, simulation, and synthesis are part of the project. Further physical-design implementation and verification are ongoing.
Future Improvements
- Expand testbench coverage
- Verify all ALU operations and status flags
- Automate regression testing
- Analyze synthesis area and timing reports
- Complete the OpenLane physical-design flow
- Verify design-rule compliance
- Generate and inspect the final GDSII layout
Author
Uttam Vishnumahanthi
GitHub: uttam-vishnumahanthi
