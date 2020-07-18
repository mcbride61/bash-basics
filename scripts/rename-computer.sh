#!/bin/bash
# Rename hostname
computerName="`scutil --get ComputerName`"
scutil --set LocalHostName $computerName
scutil --set ComputerName $computerName
scutil --set HostName $computerName
