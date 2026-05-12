## Bonus Exercise - Full Chip Design


In order to create a full chip design we need to generate a pad ring.

Clone the repository from wafer space:

```bash
git clone https://github.com/wafer-space/gf180mcu-project-template/
cd gf180mcu-project-template
```

We use a custom fork of the gf180mcuD PDK variant until all changes have been upstreamed.

To clone the latest PDK version, simply run:

```bash
make clone-pdk
```

Now run the flow:

```bash
make librelane
```

## View the design

After completion, you can view the design using the OpenROAD GUI:

```bash
make librelane-openroad
```
Or using KLayout:
```bash
make librelane-klayout
```

## Simulation

## Verification and Simulation

We use [cocotb](https://www.cocotb.org/), a Python-based testbench environment, for the verification of the chip.
The underlying simulator is Icarus Verilog (https://github.com/steveicarus/iverilog).

To install iverilog, run the following command:
```bash
conda install -c unic-cass iverilog
```

The testbench is located in `cocotb/chip_top_tb.py`. To run the RTL simulation, run the following command:


```
make sim
```

To run the GL (gate-level) simulation, run the following command:

```
make sim-gl
```

> [!NOTE]
> You need to have the latest implementation of your design in the `final/` folder. After a run has completed without errors, the final views will be copied to `final/`.

In both cases, a waveform file will be generated under `cocotb/sim_build/chip_top.fst`.
You can view it using a waveform viewer, for example, [GTKWave](https://gtkwave.github.io/gtkwave/).

Install GTKwave:
```bash
sudo apt-get update
sudo apt-get install gtkwave
```
View the waveform:

```
make sim-view
```

You can now update the testbench according to your design.

## Implementing Your Own Design

The source files for this template can be found in the `src/` directory. `chip_top.sv` defines the top-level ports and instantiates `chip_core`, chip ID (QR code) and the wafer.space logo. To allow for the default bonding setup, do not change the number of pads in order to keep the original bondpad positions. To be compatible with the default breakout PCB, do not change any of the power or ground pads. However, you can change the type of the signal pads, e.g. to bidirectional, input-only or e.g. analog pads. The template provides the `NUM_INPUT` and `NUM_BIDIR` parameters for this purpose.

The actual pad positions are defined in the LibreLane configuration file under `librelane/config.yaml`. The variables `PAD_SOUTH`/`PAD_EAST`/`PAD_NORTH`/`PAD_WEST` determine the respective pad placement. The LibreLane configuration also allows you to customize the flow (enable or disable steps), specify the source files, set various variables for the steps, and instantiate macros. For more information about the configuration, please refer to the LibreLane documentation: https://librelane.readthedocs.io/en/latest/

To implement your own design, simply edit `chip_core.sv`. The `chip_core` module receives the clock and reset, as well as the signals from the pads defined in `chip_top`. As an example, a 42-bit wide counter is implemented.

> [!NOTE]
> For more comprehensive SystemVerilog support, enable the `USE_SLANG` variable in the LibreLane configuration.

