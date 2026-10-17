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
