#!/usr/bin/sh

while inotifywait -e create -e moved_to -e moved_from -e close_write /home/dmtr/.local/share/mail/dmtr\@rasljic.xyz/INBOX/new/; do /usr/bin/polybar-msg hook mail 1; done;
