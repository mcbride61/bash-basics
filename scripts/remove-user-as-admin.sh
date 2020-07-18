#!/bin/sh
#Demote Admin to Standard Account (staff account)
/usr/sbin/dseditgroup -o edit -d staff -t user admin 
