#!/usr/bin/bash

archUpdates=$(checkupdates 2>/dev/null | wc -l)
aurUpdates=$(yay -Qum 2>/dev/null | wc -l)
totalUpdates=$(($archUpdates + $aurUpdates))

if [ "$totalUpdates" -gt 0 ]; then
    tooltipText="<b><u>Updates Available</u></b>\n"
    tooltipText+="<b>Arch: $archUpdates\nAur: $aurUpdates</b>"

    printf '{"text": "󰚰 %d", "tooltip": "%s"}\n' "$totalUpdates" "$tooltipText"

else
    printf '{"text": "", "tooltip": ""}\n'
fi

