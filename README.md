# conky-wksta
This is my own personal Conky config.  Most of it's copied from other contributors and I've simply modified their scripts.  If I missed any attributions, I sincerely apologize!

## Config attributions
### mainrc
Although heavily modified, this config was based on the config created by didi79 (http://didi79.deviantart.com/art/conky-config-127651851).  As this repo is my first Conky config, I went to school on his script and started by modifying it.  Thanks didi79.

### rings and rings.lua
It looks like this was originally part of the Linux Mint distro back in 2011, near as I can tell.

### syslog
I created this simple script so I would have syslog on my screen at all times at a glance.  It doesn't update fast enough if a lot of entries race by, but that's true in the terminal as well (which is why we have 'grep' and can set infinite scrolling).

## Support scripts
### cores.sh
I created this script as a simple utility to display the processor model and the count of physical processors, physical cores, and logical cores (including hyperthreads).  It was modified for Conky so that it could display a line at a time (via arguments) to make it simple for line by line formatting.

### ipify.sh
This was simply the easiest way to get my public IP (obfuscated in the screenshot).

### cpu_temp.sh
I have a dual socket, 8 core (4 cores per processor) system.  This script lets me get the individual temperatures for each physical core.


