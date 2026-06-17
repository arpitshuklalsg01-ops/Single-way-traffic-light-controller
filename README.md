# Single-way-traffic-light-controller
Traffic Light Controller using Moore FSM in Verilog HDL. Implements RED, GREEN, and YELLOW state transitions with asynchronous reset. Verified through simulation and waveform analysis using Icarus Verilog and GTKWave.



# 🚦 Traffic Light Controller using Moore FSM

A Verilog HDL implementation of a Traffic Light Controller based on a Moore Finite State Machine (FSM). The controller cycles through RED, GREEN, and YELLOW states using synchronous state transitions and asynchronous reset functionality.

This project demonstrates FSM design methodology, state encoding, RTL implementation, and functional verification through simulation and waveform analysis.

---

## 📋 Design Specifications

### Inputs
- `clk` : System Clock
- `rst` : Asynchronous Reset

### Outputs
- `R` : Red Light
- `G` : Green Light
- `Y` : Yellow Light

---

## 🔄 State Diagram


RED ──► GREEN ──► YELLOW
 ▲                    │
 └────────────────────┘

## ⚙️ FSM Operation

State Transition Sequence:

RED → GREEN → YELLOW → RED

## 🏗️ RTL Architecture

The design is divided into three blocks:

### 1. State Register
- Stores current FSM state
- Updates on positive clock edge
- Supports asynchronous reset

### 2. Next-State Logic
- Generates the next state based on the current state

### 3. Output Logic
- Generates traffic light outputs based on current state (Moore FSM)

---

## 🧪 Verification Results

Simulation confirms:

✅ Reset initializes controller to RED state

✅ Correct RED → GREEN → YELLOW → RED sequence

✅ Only one traffic light active at a time

✅ Stable state transitions

✅ No invalid states observed

✅ No unintended latches generated

Example Simulation Output:

R=1 G=0 Y=0  (RED)
R=0 G=1 Y=0  (GREEN)
R=0 G=0 Y=1  (YELLOW)
R=1 G=0 Y=0  (RED)

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- EPWave / GTKWave

---

## 📚 Key Concepts

- Finite State Machines (FSM)
- Moore Machine Architecture
- State Encoding
- Sequential Logic
- Combinational Logic
- RTL Design
- Functional Verification
- Waveform Analysis

---

## 🚀 37-Day Verilog & RTL Design Challenge

**Day 16 Project:** Traffic Light Controller using Moore FSM

---

## 👨‍💻 Author

**Arpit Shukla**

Aspiring VLSI Engineer | RTL Design | Verilog HDL | Digital Design | Embedded Systems

Connect with me on LinkedIn and follow my 37-Day RTL Design Challenge journey.
