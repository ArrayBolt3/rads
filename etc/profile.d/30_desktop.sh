#!/bin/bash

## This file is part of Whonix.
## Copyright (C) 2012 - 2014 Patrick Schleizer <adrelanos@riseup.net>
## See the file COPYING for copying conditions.

## Do not rename to /etc/profile.d/80_desktop.sh, because it gets deleted in
## /usr/share/whonix/postinst.d/70_legacy.

if [ ! "$(tty)" = "/dev/tty1" ]; then
   return 0
else
   ## Not launching into background using &, because we need to listen for
   ## STRG + C (signal sigterm).
   /usr/lib/ram_adjusted_desktop_starter/ram_adjusted_desktop_starter
fi
