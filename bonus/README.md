## Bonus Exercise - Full Chip Design

> **Caution**
> Full chip design with gf180mcuD is currently still experimental.

In order to create a full chip design we need to generate a pad ring.
LibreLane does not yet have support for automatic pad ring generation.
However, we can make use of the experimental
**[leo/padring](https://github.com/librelane/librelane/tree/leo/padring)** branch.

Instead of invoking `nix-shell` in the root of this repository, invoke
`nix-shell` inside of this `bonus/` directory. That will enable the correct
LibreLane version.

We also need a custom branch of the gf180mcu PDK that includes IO cell support.
Clone the PDK fork:

```bash
git clone https://github.com/mole99/gf180mcu-pdk.git \
    --single-branch -b leo/padring \
    --recurse-submodules
```

Before starting LibreLane, export `PDK_ROOT` and `PDK`:

```bash
export PDK_ROOT=/path/to/pdk && export PDK=gf180mcuD
```

Now run the flow:

```bash
librelane config.yaml --manual-pdk
```

> **Note**
> The gf180mcuD IO cells are provided by the `gf180mcu_fd_io` library,
> which is included in the PDK under `libs.ref/gf180mcu_fd_io/`.
> Make sure the IO cell LEF and GDS files are referenced correctly in
> `config.yaml` before running.

The result should be something like this:

![OpenROAD GUI](img/bonus_openroad_1.png)
