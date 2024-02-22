#!/usr/bin/bash

cp wal_orig.json wal.json

green="789922"

col00=$(head -21 ~/.cache/wal/colors.Xresources | grep color0 | sed "s/\*.color0: #//g" | tr '[:upper:]' '[:lower:]')
col01=$(head -23 ~/.cache/wal/colors.Xresources | grep color1 | sed "s/\*.color1: #//g" | tr '[:upper:]' '[:lower:]')
col03=$(head -27 ~/.cache/wal/colors.Xresources | grep color3 | sed "s/\*.color3: #//g" | tr '[:upper:]' '[:lower:]')
col04=$(head -29 ~/.cache/wal/colors.Xresources | grep color4 | sed "s/\*.color4: #//g" | tr '[:upper:]' '[:lower:]')
col05=$(head -31 ~/.cache/wal/colors.Xresources | grep color5 | sed "s/\*.color5: #//g" | tr '[:upper:]' '[:lower:]')
col06=$(head -33 ~/.cache/wal/colors.Xresources | grep color6 | sed "s/\*.color6: #//g" | tr '[:upper:]' '[:lower:]')
col07=$(head -35 ~/.cache/wal/colors.Xresources | grep color7 | sed "s/\*.color7: #//g" | tr '[:upper:]' '[:lower:]')
col08=$(head -37 ~/.cache/wal/colors.Xresources | grep color8 | sed "s/\*.color8: #//g" | tr '[:upper:]' '[:lower:]')

red_string=$(printf "%d" 0x${col05:0:2})
green_string=$(printf "%d" 0x${col05:2:2})
blue_string=$(printf "%d" 0x${col05:4:2})

red_integer=$((red_string))
green_integer=$((green_string/2))
blue_integer=$((blue_string/2))

red_hex=$(printf "%02x" $red_integer)
green_hex=$(printf "%02x" $green_integer)
blue_hex=$(printf "%02x" $blue_integer)

col02="${red_hex}${green_hex}${blue_hex}"

sed -i "s/color00/$col00/g" wal.json
sed -i "s/color01/$col01/g" wal.json
sed -i "s/color02/$col02/g" wal.json
sed -i "s/color03/$col03/g" wal.json
sed -i "s/color04/$col04/g" wal.json
sed -i "s/color05/$col05/g" wal.json
sed -i "s/color06/$col06/g" wal.json
sed -i "s/color07/$col07/g" wal.json
sed -i "s/color08/$col08/g" wal.json
sed -i "s/color09/$green/g" wal.json