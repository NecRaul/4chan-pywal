#!/bin/bash

cp "$(dirname "$0")/4chanX-theme.json" "$HOME/.cache/wal/4chanX-theme.json"

green="789922"

col00=$(head -21 "$HOME/.cache/wal/colors.Xresources" | grep color0 | sed "s/\*.color0: #//g" | tr '[:upper:]' '[:lower:]')
col01=$(head -23 "$HOME/.cache/wal/colors.Xresources" | grep color1 | sed "s/\*.color1: #//g" | tr '[:upper:]' '[:lower:]')
col03=$(head -27 "$HOME/.cache/wal/colors.Xresources" | grep color3 | sed "s/\*.color3: #//g" | tr '[:upper:]' '[:lower:]')
col04=$(head -29 "$HOME/.cache/wal/colors.Xresources" | grep color4 | sed "s/\*.color4: #//g" | tr '[:upper:]' '[:lower:]')
col05=$(head -31 "$HOME/.cache/wal/colors.Xresources" | grep color5 | sed "s/\*.color5: #//g" | tr '[:upper:]' '[:lower:]')
col06=$(head -33 "$HOME/.cache/wal/colors.Xresources" | grep color6 | sed "s/\*.color6: #//g" | tr '[:upper:]' '[:lower:]')
col07=$(head -35 "$HOME/.cache/wal/colors.Xresources" | grep color7 | sed "s/\*.color7: #//g" | tr '[:upper:]' '[:lower:]')
col08=$(head -37 "$HOME/.cache/wal/colors.Xresources" | grep color8 | sed "s/\*.color8: #//g" | tr '[:upper:]' '[:lower:]')

col02_red_string=$(printf "%d" 0x${col05:0:2})
col02_green_string=$(printf "%d" 0x${col05:2:2})
col02_blue_string=$(printf "%d" 0x${col05:4:2})

col02_red_integer=$((col02_red_string))
col02_green_integer=$((col02_green_string / 2))
col02_blue_integer=$((col02_blue_string / 2))

col02_red_hex=$(printf "%02x" $col02_red_integer)
col02_green_hex=$(printf "%02x" $col02_green_integer)
col02_blue_hex=$(printf "%02x" $col02_blue_integer)

col02="${col02_red_hex}${col02_green_hex}${col02_blue_hex}"

col09_red_string=$(printf "%d" 0x${col00:0:2})
col09_green_string=$(printf "%d" 0x${col00:2:2})
col09_blue_string=$(printf "%d" 0x${col00:4:2})

col09_red_integer=$((col09_red_string * 3))
col09_green_integer=$((col09_green_string * 3))
col09_blue_integer=$((col09_blue_string * 3))

col09_red_hex=$(printf "%02x" $col09_red_integer)
col09_green_hex=$(printf "%02x" $col09_green_integer)
col09_blue_hex=$(printf "%02x" $col09_blue_integer)

col09="${col09_red_hex}${col09_green_hex}${col09_blue_hex}"

sed -i "s/color00/$col00/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color01/$col01/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color02/$col02/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color03/$col03/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color04/$col04/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color05/$col05/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color06/$col06/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color07/$col07/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color08/$col08/g" "$HOME/.cache/wal/4chanX-theme.json"
sed -i "s/color09/$col09/g" "$HOME/.cache/wal/4chanX-theme.json"
