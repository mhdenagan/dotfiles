#!/usr/bin/sh

setxkbmap -query | grep "layout" | awk '{print $2}'
