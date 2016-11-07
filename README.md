# conky-wksta
This is my own persoanl Conky config.  Most of it is copied from other contributors and I've simply heavily modified their scripts.  If I missed any attributions, I sincerely apologize!

## Scripts
### cores.sh
I originally created this script to display the processor model, physical processors, physical cores, and "cores" including hyperthreads.  It was modified for Conky so that it could display a line at a time (via arguments) for easier line by line formatting.

### ipify.sh
This was simply the easiest way to get my public IP (obfuscated in the screenshot).

### cpu_temp.sh
I have a dual socket, 8 core (4 cores per processor) system.  This script lets me individually get the temperatures for each physical core.

## Attributions
### mainrc
Although heavily modified, this config was heavily based on the config created by didi79 (http://didi79.deviantart.com/art/conky-config-127651851).  As this is my first Conky config, I went to school on his original script and simply modified it.

### rings and rings.lua
It looks like this was originally part of the Linux Mint distro back in 2011

### syslog
I created this simple script so I would have syslog on my screen at all times at a glance.  It doesn't update fast enough if a lot of entries race by, but that's true in the terminal as well (which is why we have 'grep' and can set infinite scrolling).
