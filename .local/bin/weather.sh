#!/bin/sh
# bspwm for displaying the current temperature and wind, if wttr.in is unavailable then недоступно will be displayed

weather=$(curl -s wttr.in/?format="%c+%t+%w\n" | awk '{print "🌞 " $2 " " $3 " " $4}')

if [ $(echo "$weather" | grep -E "(Unknown|curl|HTML)" | wc -l) -gt 0 ]; then
    echo "недоступно"
else
    echo "$weather"
fi
