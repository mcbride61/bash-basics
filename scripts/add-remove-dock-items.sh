#!/bin/sh
# PLEASE READ
# REFERENCE SCRIPT ONLY

#Add Documents and Download to Dock + remove items from dock
killall cfprefsd
/usr/local/bin/dockutil --add '/Applications/Launchpad.app'--position 1 --replacing 'Launchpad' --allhomes
/usr/local/bin/dockutil --add '/Applications/Safari.app' --position 2 --replacing 'Safari' --allhomes
/usr/local/bin/dockutil --add '/Applications/Firefox.app' --position 3 --replacing 'Firefox' --allhomes
/usr/local/bin/dockutil --add '~/Downloads' --replacing 'Downloads' --view grid --display folder --allhomes
/usr/local/bin/dockutil --add '~/Documents' --replacing 'Documents' --view grid --display folder --allhomes

# Remove
/usr/local/bin/dockutil --remove 'Mail' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Contacts' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Calendar' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Notes' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Reminders' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Maps' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Messages' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'FaceTime' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Pages' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Numbers' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Calendar' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Keynote' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'iTunes' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'iBooks' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'App Store' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Photos' --no-restart --allhomes

# remove all then add specific dock items
dockutil --remove all
dockutil --add '/Applications/Google Chrome.app' --no-restart
dockutil --add '/Applications/Safari.app' --no-restart
dockutil --add '/Applications/Firefox.app' --no-restart
dockutil --add '/Applications/Microsoft Word.app' --no-restart
dockutil --add '/Applications/Self Service.app' --no-restart
dockutil --add '/Applications' --no-restart
dockutil --add '~/Downloads'

exit 0
