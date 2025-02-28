#!/bin/bash

set -e

rm -rf temp/
mkdir temp/
cp mag/*.mag temp/

for filename in temp/*; do
sed -i '/string GDS_FILE.*/d' $filename;
done

for filename in temp/*; do
echo "calma;lef write;" | magic -dnull -noconsole $filename;
done
rm -rf temp/

rm -rf gds/
mkdir gds/
mv *.gds gds/

for filename in *.lef; do
sed -i 's/END LIBRARY//' $filename;
done
rm -rf lef/
mkdir lef/
touch lef/sky130_as_sc_hs.lef
for filename in *.lef; do
cat $filename >> lef/sky130_as_sc_hs.lef;
done
echo "END LIBRARY" >> lef/sky130_as_sc_hs.lef;
rm -f *.lef

python3 gen_merged_gds.py gds/*
