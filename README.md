# Vending-Machine-FSM
This project simulates a Vending Machine FSM using Verilog HDL. The vending machine accepts coins of 5 and 10 units. Once the total sum reaches or exceeds a predefined threshold (e.g., 15 units), the machine dispenses an item. The FSM transitions between states based on the inserted coin value and tracks the total amount.

---

### 🎯 Functionality

- Accepts ₹5 and ₹10 coins via `coin_5` and `coin_10` signals.
- Product is dispensed when total inserted amount ≥ ₹15.
- Tracks current state using `current_state` output.

---

## 🛠️ File Structure

```bash
vending_machine_fsm/
├── vending_machine.v         # Main Verilog FSM module
├── vending_machine_tb.v      # Testbench for simulating coin input and output
├── images/                   # FSM diagram and waveform screenshots
│   ├── schematics.png
│   └── simulation.png
├── README.md                 # Project documentation
└── LICENSE                   # MIT License file
```

## 📦 Module Overview

### 🔧 `vending_machine.v`

- A finite state machine (FSM) that simulates a vending machine.
- **Inputs:**
  - `clk`: Clock signal
  - `reset`: Reset signal
  - `coin_5`: Input for 5-unit coin
  - `coin_10`: Input for 10-unit coin
- **Outputs:**
  - `dispense`: High when 15 units have been inserted
  - `current_state`: Encoded current state of the FSM

### 🧪 `vending_machine_tb.v`

- Provides a test environment to simulate the vending machine FSM.
- Initializes coin inputs, simulates coin insertions, and observes state transitions.
- Uses `$monitor` to print real-time simulation details.


## 📷 Schematics & Simulation

### 🧭 FSM Diagram
<img width="1508" height="647" alt="Schematics" src="https://github.com/user-attachments/assets/a66d6fb3-293e-43fe-bc10-292d00b710d5" />


### 📈 Simulation Waveform
<img width="1476" height="635" alt="Simulation" src="https://github.com/user-attachments/assets/8880c649-f1a5-4225-b5cc-0ae664188cc0" />


## 📝 License

This project is licensed under the [MIT License](LICENSE).

## 👩‍💻 Author

Created by **Isha Rani**
