#!/bin/bash

# Note that the following entry was created in the sudoers file using visudo to 
# allow any user in the sudo group to execute ipmi-sensors without entering a PW:
# # Allow any user in the sudo group to run ipmi-sensors w/o pw
# %sudo ALL=(ALL) NOPASSWD: /usr/sbin/ipmi-sensors

sudo ipmi-sensors | grep "Sys Temp" | cut -d'|' -f4 | cut -d' ' -f2
