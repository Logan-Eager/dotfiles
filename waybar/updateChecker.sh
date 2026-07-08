#!/usr/bin/bash

archUpdates=$(checkupdates 2>/dev/null | wc -l)
aurUpdates=$(yay -Qum 2>/dev/null | wc -l)
totalUpdates=$((archUpdates + aurUpdates))

if [ "$totalUpdates" -gt 0 ]; then
    tooltipText="<b>Updates Available: $totalUpdates</b>\n\n"
    tooltipText+="Arch Packages: $archUpdates\n"
    tooltipText+="AUR Packages: $aurUpdates\n\n"
    tooltipText+="<i>Click widget to update system</i>"

    printf '{"text": "󰚰 %d", "tooltip": "%s"}\n' "$totalUpdates"
fi

