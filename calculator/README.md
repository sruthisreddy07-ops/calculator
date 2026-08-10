# Calculator using Verilog HDL

## Overview

This project implements a simple 8-bit calculator using Verilog HDL. The calculator performs basic arithmetic and logical operations based on a 3-bit opcode.

## Features

- 8-bit operands
- Addition
- Subtraction
- Multiplication
- Division
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOT (Operand A)

## Inputs

| Signal | Width | Description |
|--------|------|-------------|
| A | 8-bit | First Operand |
| B | 8-bit | Second Operand |
| opcode | 3-bit | Operation Selection |

## Output

| Signal | Width | Description |
|--------|------|-------------|
| result | 16-bit | Output Result |

## Opcode Table

| Opcode | Operation |
|---------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Multiplication |
| 011 | Division |
| 100 | AND |
| 101 | OR |
| 110 | XOR |
| 111 | NOT A |

## Files

- `calculator.v` – Calculator design
- `calculator_tb.v` – Testbench
- `simulation/waveform.png` – Simulation waveform

## Simulation

Compile:

```bash
iverilog -o calculator calculator.v calculator_tb.v
```

Run:

```bash
vvp calculator
```

View waveform:

```bash
gtkwave calculator.vcd
```

## Applications

- Digital logic learning
- FPGA practice
- Arithmetic Logic Unit (ALU) concepts

## Author

Your Name

