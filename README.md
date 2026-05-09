# Exercise 1 - Let's Implement a 32-bit Counter (GF180MCUD)

> Adapted from [HeiChips 2025 LibreLane Workshop](https://github.com/FPGA-Research/heichips25-workshop)  
> PDK: **gf180mcuD** (GlobalFoundries 180nm) | Design: **32-bit counter**

## 1.1 - Run LibreLane

We start the first exercise by implementing a 32-bit counter. Make sure you have the `librelane` conda environment activated, and run the following command in the `exercise_1` folder:

```bash
librelane --pdk gf180mcuD config_gf180.yaml
```

This command invokes LibreLane with the **gf180mcuD** PDK and the `config_gf180.yaml` configuration file.

> **PDK** stands for Process Design Kit and contains everything needed for chip design.
> We use **gf180mcuD** (GlobalFoundries 180nm CMOS) — the same PDK used for the SSCS Open-Source Chipathon.
> As of now the supported PDK families in LibreLane are `sky130`, `gf180mcu` and `ihp-sg13g2`.

LibreLane automatically manages the PDK via [Ciel](https://github.com/fossi-foundation/ciel), downloading it to `~/.ciel/` on the first run.

The `config_gf180.yaml` configuration file contains:

```yaml
DESIGN_NAME: counter
VERILOG_FILES: dir::counter32.sv
CLOCK_PORT: clk_i
CLOCK_PERIOD: 25   # 25ns = 40MHz (GF180 is slower than IHP SG13G2)
STD_CELL_LIBRARY: gf180mcu_fd_sc_mcu7t5v0
DIE_AREA:  [0, 0, 80, 80]
CORE_AREA: [5, 5, 75, 75]
FP_CORE_UTIL: 40
```

Key differences from the original workshop config:
- `CLOCK_PERIOD: 25` instead of `10` — GF180 180nm is slower than IHP SG13G2 130nm
- `STD_CELL_LIBRARY: gf180mcu_fd_sc_mcu7t5v0` — 7-track 5V standard cell library of GF180MCU

The RTL design `counter32.sv` is a 32-bit synchronous counter (expanded from the original 8-bit):

```systemverilog
module counter (
    input  logic        clk_i,
    input  logic        rst_ni,   // active-low reset
    output logic [31:0] count_o   // 32-bit (original was [7:0])
);
    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni)
            count_o <= 32'h0;
        else
            count_o <= count_o + 32'h1;
    end
endmodule
```

LibreLane runs the default [`Classic`](https://github.com/librelane/librelane/blob/main/librelane/flows/classic.py) flow, which includes steps such as `Verilator.Lint`, `Yosys.Synthesis`, `OpenROAD.Floorplan`, `OpenROAD.GlobalPlacement`, `OpenROAD.CTS`, `OpenROAD.Routing`, `Magic.DRC`, and `Netgen.LVS`.

After the flow completes (80/80 steps), you should see:

```
* Antenna
Passed ✅

* LVS
Passed ✅

* DRC
Passed ✅
```

Congratulations! You have implemented your first GF180MCUD design 🎉

---

## 1.2 - View Your Design

### 1.2.1 OpenROAD GUI

[OpenROAD](https://github.com/The-OpenROAD-Project/OpenROAD) is used by LibreLane for physical design steps. To open the GUI:

```bash
librelane --pdk gf180mcuD config_gf180.yaml --last-run --flow OpenInOpenROAD
```

`--last-run` reuses the latest run folder. `--flow OpenInOpenROAD` opens the design in the GUI instead of re-running the full flow.

![OpenROAD GUI - GF180MCUD 32-bit counter layout](img/openroad_gui_1.png)

In the center is your design with display controls on the left and the inspector on the right. You can disable layers, select cells, enable heatmaps, and more.

**Clock Tree Viewer:** Open via "Windows" → "Clock Tree Viewer" → click "Update".

![Clock Tree - 32 flip-flops for 32-bit counter](img/openroad_gui_2.png)

Unlike the 8-bit counter (8 flip-flops), the 32-bit counter has **32 flip-flops** as leaves of the clock tree, resulting in a deeper/wider clock distribution network.

**Timing Report:** Open via "Windows" → "Timing Report" → click "Update".

![Timing Report - setup/hold paths](img/openroad_gui_3.png)

> **Tip:** To export a high-resolution image, set "Display Control" → "Misc" → "Background" to white, then run in the Scripting console:
> ```tcl
> save_image image.png -width 4096
> ```

### 1.2.2 KLayout

KLayout loads the GDS/DEF of your design containing all geometry information. To open:

```bash
librelane --pdk gf180mcuD config_gf180.yaml --last-run --flow OpenInKLayout
```

![KLayout - GF180MCUD layers and cell placement](img/klayout_1.png)

In the center is your design, on the left is the cell hierarchy, and on the right are the **GF180MCUD metal layers** (Metal1–Metal5, Via1–Via4, etc.) — these are the actual layers sent to GlobalFoundries for fabrication.

Note that GF180MCUD has a different layer stack compared to IHP SG13G2 — you will see layers prefixed with `Metal1`, `Metal2`, ... up to `Metal5` (5-metal process).

---

## 1.3 - Discover the `runs/` Directory

After running LibreLane, a `runs/` directory is created in your project folder. Inside you will find run tags such as `RUN_2026-05-09_22-30-49`.

Within each run tag:

```
runs/RUN_2026-05-09_22-30-49/
├── flow.log                          ← full log of the entire flow
├── errors.log                        ← only errors
├── warnings.log                      ← only warnings
├── 01-verilator-lint/
├── 05-yosys-jsonheader/
│   └── *.json                        ← synthesized module info
├── 08-yosys-synthesis/
│   └── *.nl.v                        ← synthesized netlist
├── 13-openroad-floorplan/
│   ├── state_in.json                 ← input state
│   ├── state_out.json                ← output state
│   ├── counter.odb                   ← OpenDB layout database
│   ├── counter.nl.v                  ← unpowered netlist
│   └── counter.pnl.v                 ← powered netlist
└── ...
```

Each step takes `state_in.json`, processes it, and outputs `state_out.json`. For debugging, inspect the directory of the failing step.

**Cell statistics for the 32-bit GF180MCUD counter** (from `13-openroad-floorplan` log):

| Cell Type | Count | Area (µm²) |
|-----------|-------|------------|
| Inverter | 9 | 79.03 |
| Sequential (FF) | 32 | 2388.38 |
| Multi-input combinational | 73 | 1475.17 |
| **Total** | **114** | **3942.58** |

The 32 sequential cells correspond exactly to the 32 flip-flops of our 32-bit counter.

---

## Setup (Ubuntu + Miniconda)

Unlike the original workshop which uses Nix, this adapted version uses Miniconda:

```bash
# Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/unic-cass
source $HOME/unic-cass/bin/activate

# Create environment and install tools
conda create -n librelane python==3.12 -y
conda activate librelane
conda install duyhieu/label/ci-master-1::netgen \
              duyhieu/label/ci-master-1::magic \
              duyhieu/label/ci-master-1::openroad \
              duyhieu/label/ci-master-1::klayout \
              duyhieu/label/ci-master-1::verilator \
              duyhieu/label/ci-master-1::yosys
pip3 install librelane
```

---

*Based on HeiChips 2025 LibreLane Workshop (CC-BY-SA-4.0, Leo Moser) — adapted for GF180MCUD by [Phong / VNU-ICTC Lab]*
