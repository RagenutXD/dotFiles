#!/usr/bin/bash

if [ x"$@" = x"shutdown" ]; then
    systemctl poweroff
elif [ x"$@" = x"logout" ]; then
    niri msg action quit
elif [ x"$@" = x"reboot" ]; then
    systemctl reboot
fi

echo -en "shutdown\0icon\x1fsystem-shutdown\n"
echo -en "reboot\0icon\x1fsystem-reboot\n"
echo -en "logout\0icon\x1fsystem-log-out\n"
