set current_folder [file dirname [file normalize [info script]]]
# Technology lib

set ::env(LIB_TYPICAL) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_as_sc_hs__tt_025C_1v80.lib"
# TODO: generate lib files for these corners
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_as_sc_hs__ff_005C_1v90.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sky130_as_sc_hs__ss_055C_1v70.lib"

set ::env(LIB_SYNTH) $::env(LIB_TYPICAL)

# MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux2_map.v"

# Placement site for core cells
# This can be found in the technology lef
set ::env(PLACE_SITE) "unithd"
set ::env(PLACE_SITE_WIDTH) 0.460
set ::env(PLACE_SITE_HEIGHT) 2.720

# welltap and endcap cells
set ::env(FP_WELLTAP_CELL) "sky130_as_sc_hs__tap_1"
set ::env(FP_ENDCAP_CELL) "sky130_as_sc_hs__decap_3"

set ::env(SYNTH_DRIVING_CELL) "sky130_as_sc_hs__inv_2"
set ::env(SYNTH_DRIVING_CELL_PIN) "Y"
set ::env(OUTPUT_CAP_LOAD) "33.442" ;
set ::env(SYNTH_MIN_BUF_PORT) "sky130_as_sc_hs__buff_11 A Y"
set ::env(SYNTH_TIEHI_PORT) "sky130_as_sc_hs__tieh ONE"
set ::env(SYNTH_TIELO_PORT) "sky130_as_sc_hs__tiel ZERO"

# cts defaults
set ::env(CTS_ROOT_BUFFER) sky130_as_sc_hs__clkbuff_11
set ::env(CELL_CLK_PORT) CLK

# Placement defaults
set ::env(PL_LIB) $::env(LIB_TYPICAL)

# Fillcell insertion
set ::env(FILL_CELL) "sky130_as_sc_hs__fill*"
set ::env(DECAP_CELL) "sky130_as_sc_hs__decap_16 sky130_as_sc_hs__decap_4 sky130_as_sc_hs__decap_3"
set ::env(RE_BUFFER_CELL) "sky130_as_sc_hs__buff_4"

# Diode insertaion
set ::env(DIODE_CELL) "sky130_as_sc_hs__diode_2"
set ::env(FAKEDIODE_CELL) "sky130_as_sc_hs__diode_2"
set ::env(DIODE_CELL_PIN) "DIODE"

set ::env(GPL_CELL_PADDING) {0}
set ::env(DPL_CELL_PADDING) {0}
set ::env(CELL_PAD_EXCLUDE) "sky130_as_sc_hs__tap* sky130_as_sc_hs__decap* sky130_as_sc_hs__fill*"

# Clk Buffers info CTS data
set ::env(ROOT_CLK_BUFFER) sky130_as_sc_hs__clkbuff_11
set ::env(CLK_BUFFER) sky130_as_sc_hs__clkbuff_8
set ::env(CLK_BUFFER_INPUT) A
set ::env(CLK_BUFFER_OUTPUT) Y
set ::env(CTS_CLK_BUFFER_LIST) "sky130_as_sc_hs__clkbuff_8 sky130_as_sc_hs__clkbuff_4"
set ::env(FP_PDN_RAIL_WIDTH) 0.48
set ::env(CTS_MAX_CAP) 1.5
set ::env(MAX_TRANSITION_CONSTRAINT) 0.75
set ::env(MAX_FANOUT_CONSTRAINT) 10

set ::env(TRISTATE_CELL_PREFIX) "$::env(STD_CELL_LIBRARY)__ebuf"
