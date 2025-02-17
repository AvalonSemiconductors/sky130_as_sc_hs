#!/bin/bash

set -e

echo "extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice;lef write;calma;" | magic -dnull -noconsole $1.mag
sed -i '/subckt sky130_as_sc_hs__/aR1111 VNB VGND 10' $1.spice && sed -i '/subckt sky130_as_sc_hs__/aR1122 VPB VPWR 10' $1.spice
lctime --liberty template.lib --library "/foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt" --output-loads "$2" --slew-times "$3" --spice $1.spice --cell $1 --output ./test.lib
