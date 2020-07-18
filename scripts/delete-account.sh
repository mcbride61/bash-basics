#!/bin/bash
# Delete account
echo "Deleting: ninjaturle"
dscl . -delete /Users/ninjaturtle

echo "Deleting: Ninja Turtle"
dscl . -delete /Users/"Ninja Turtle"

# Delete Home folder
echo "Deleting home directories"
rm -rf /Users/ninjaturtle

sleep 10
exit 0
