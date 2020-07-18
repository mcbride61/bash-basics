#!/bin/bash
# Get computer name and remove space
COMPNAME=$(scutil --get ComputerName | sed -e 's/ //g')
scutil --set ComputerName "$COMPNAME"
scutil --set HostName "$COMPNAME"
scutil --set LocalHostName "$COMPNAME"
