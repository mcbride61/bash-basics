#!/bin/sh
# Promote Standard Account to Admin (staff account)
/usr/sbin/dseditgroup -o edit -a staff -t user admin 
