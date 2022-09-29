# Important Note

These cronjobs have components that require information about your current display to display notifications correctly.

When you add them as cronjobs, I recommend you precede the command with commands as those below:

```
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u $USER)/bus; export DISPLAY=:0; . $HOME/.zprofile;  then_command_goes_here
```

This ensures that notifications will display, xdotool commands will function and environmental variables will work as well.

CUSTOM:

`*/3 * * * * /usr/bin/env DISPLAY=:0 /usr/bin/mailsync2'
'*/45 * * * * /usr/bin/env DISPLAY=:0 /usr/bin/checkup''
'*/10 * * * * /usr/bin/env DISPLAY=:0 /usr/bin/newsup''
