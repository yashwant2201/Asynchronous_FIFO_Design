# Asynchronous FIFO Design


## Overview

This project implements a parameterized Asynchronous FIFO for reliable data transfer between two independent clock domains.

Asynchronous FIFO is widely used in multi-clock digital systems for safe clock domain crossing (CDC). This design uses Gray code pointer synchronization and two flip-flop synchronizers to transfer pointer information between write and read clock domains.

The architecture is based on the FIFO design methodology proposed by Clifford E. Cummings.


---

## Features

- Dual clock asynchronous FIFO
- Independent read and write clock domains
- Parameterized FIFO depth and data width
- Gray code based pointer synchronization
- 2-FF synchronizer for CDC
- Full condition detection
- Empty condition detection
- Safe data transfer between asynchronous clock domains


---

# FIFO Architecture


The FIFO consists of two independent clock domains:

### Write Clock Domain

- Write pointer generation
- Binary to Gray code conversion
- Write operation control
- Full flag generation


### Read Clock Domain

- Read pointer generation
- Binary to Gray code conversion
- Read operation control
- Empty flag generation


The write pointer is synchronized into the read clock domain and the read pointer is synchronized into the write clock domain using two flip-flop synchronizers.


![FIFO Architecture](DOCUMENTATION/Async_FIFO_Architecture.png)



---

# RTL Design Modules


| Module | Description |
|---|---|
| fifo_top.v | Top-level asynchronous FIFO module |
| fifomem.v | FIFO memory storage |
| wptr_full.v | Write pointer logic and full flag generation |
| rptr_empty.v | Read pointer logic and empty flag generation |
| sync_w2r.v | Write pointer synchronization into read domain |
| sync_r2w.v | Read pointer synchronization into write domain |
| two_ff_sync.v | Two flip-flop CDC synchronizer |



---

# RTL Schematics


## FIFO Memory

![FIFO Memory](DOCUMENTATION/fifo_mem.png)


## Write Pointer and Full Logic

![Write Pointer Full](DOCUMENTATION/wptr_full.png)


## Read Pointer and Empty Logic

![Read Pointer Empty](DOCUMENTATION/rptr_empty.png)


## Write to Read Synchronizer

![Write to Read Synchronizer](DOCUMENTATION/w2r_sync.png)


## Read to Write Synchronizer

![Read to Write Synchronizer](DOCUMENTATION/r2w_sync.png)


---

# Verification


The design was verified using a Verilog testbench.

Verification includes:

- Reset operation
- Write operation
- Read operation
- FIFO Full condition
- FIFO Empty condition
- Simultaneous read and write operations


---

# Simulation Result


Simulation waveform obtained after functional verification:


![Simulation Waveform](SIMULATION/simulation.png)



---

# Tools Used

- Verilog HDL
- Xilinx Vivado Simulator
- GTKWave
- VS Code


---

# Reference

**Simulation and Synthesis Techniques for Asynchronous FIFO Design**

Clifford E. Cummings  
Sunburst Design Inc.