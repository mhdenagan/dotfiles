#!/usr/bin/sh

weatherreport="${XDG_DATA_HOME:-$HOME/.local/share}/weatherreport"

showweather() { printf "%s" "$(sed '16q;d' "$weatherreport" |
        grep -wo "[0-9]*%" | sort -rn | sed "s/^/☔/g;1q" | tr -d '\n')";
}

showweather
