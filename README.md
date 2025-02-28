# sky130_as_sc_hs

![](Screenshot_2024-12-10_23-57-17.png)

### Custom Standard Cell Library

sky130_as_sc_hs is a custom standard cell library for the sky130A PDK that is compatible with the default OpenLane flow in caravel and openframe wrappers.

The eventual goal is it to build a high-speed library that gives a performance edge at the cost of decreased density. Right now, the library is still deep in development, but already appears to deliver better results than sky130_fd_sc_hd.

This project makes use of [lctime](https://codeberg.org/TholinVali/lctime) (custom fork) for characterization.

## Usage

After cloning this repo and setting up your user project (caravel or openframe), copy the contents of the `pdk/` directory (`libs.ref/` and `libs.tech/`) from here to `your_user_project/dependencies/pdks/sky130A/`, merging with the existing directory structure and overwriting existing files if prompted.

Edit the openlane config file for the macro you wish to use this library, and add/edit the following lines:

`"STD_CELL_LIBRARY": "sky130_as_sc_hs"`
and
`"STD_CELL_LIBRARY_OPT": "sky130_as_sc_hs"`
to switch to the library.

Then, `"RUN_CVC": 0` as the Circuit Validity Check is not yet supported.

Within the section `"pdk::sky130*"`, add an entry for this library:
```json
"scl::sky130_as_sc_hs": {
	"CLOCK_PERIOD": 10
}
```

The klayout XOR check will fail if the GDSII of the standard cells is not linked to explicitly, so either add this list/copy the entry to an existing one:
```json
"EXTRA_GDS_FILES": [
	"dir::../../dependencies/pdks/sky130A/libs.ref/sky130_as_sc_hs/sky130_as_sc_hs__merged.gds"
]
```
or disable the XOR check:
`"RUN_KLAYOUT_XOR": 0`

From there, the makefile actions to run the OpenLane flow should work as normal.

## Cell Options

You can choose between using static DFFs and dynamic DFFs. Layouts built with static DFFs can be operated at any clock frequency, including a stopped clock and are the default option. Dynamic DFFs are smaller and faster, but use a capacitor charge to store a bit, meaning the data will be erased if not refreshed regularly. As a result, layouts built with dynamic DFFs must be run with a certain minimum clock speed and thus have a maximum clock pulse width limitation. The value of this limit is still TBD.

Additional performance may be gained by removing slower AOI cells from synthesis, which comes at the tradeoff of decreasing density slightly.

The directory `config_options` contains no_synth lists for these options, which may be used with the `NO_SYNTH_CELL_LIST` OpenLane configuration option. The default is static DFFs with all AOI cells enabled.
