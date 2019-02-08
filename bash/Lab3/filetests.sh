#!/bin/bash
# This script demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
[ -f /etc/resolv.conf ] && echo "/etc/resolv.conf is a regular file" || echo "/etc/resolv.conf is not a regular file"
# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
[ -h /etc/resolv.conf ] && echo "/etc/resolv.conf is a symbolic link" || echo "/etc/resolv.conf is not a symbolic link"
# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
[ -d /etc/resolv.conf ] && echo "/etc/resolv.conf is a directory" || echo "/etc/resolv.conf is not a directory"
# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
[ -r /etc/resolv.conf ] && echo "/etc/resolv.conf is readable by $USER" || echo "/etc/resolv.conf is not readable by $USER"
# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
[ -w /etc/resolv.conf ] && echo "/etc/resolv.conf is writable by $USER" || echo "/etc/resolv.conf is not writable by $USER"
# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
[ -e /etc/resolv.conf ] && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

# Tests if /tmp is a directory
# TASK 4: Add a test to see if the /tmp directory is readable
[ -r /tmp ] && echo "/tmp is readable" || echo "/tmp is not readable"
# TASK 5: Add a test to see if the /tmp directory is writable
[ -w /tmp ] && echo "/tmp is writable" || echo "/tmp is not writable"
# TASK 6: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

# Tests if one file is newer than another
# TASK 7: Add testing to print out which file newest, or if they are the same age
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf" || echo "/etc/hosts is older than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts" || echo "/etc/resolv.conf is older than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf" || echo "/etc/hosts is not the same age as /etc/resolv.conf"
