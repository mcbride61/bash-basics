#!/bin/sh
# Disable Password for Screensaver on staff standard account
defaults write /Users/staff/Library/Preferences/com.apple.screensaver askForPassword -int 0
chown staff /Users/staff/Library/Preferences/com.apple.screensaver
su staff
killall cfprefsd
