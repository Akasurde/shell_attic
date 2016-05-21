#!/bin/bash

# In order to handle spaces in for loop
# Change IFS to ansi-c quoted \n i.e., $"\n"
# This will split for input after each \n
OLDIFS=$IFS
IFS=$'\n'

for i in `firewall-cmd --list-rich-rule`
do
    echo $i
    echo "- new line"
done

# Output :
# rule family="ipv4" source address="192.168.122.1" forward-port port="5124" protocol="tcp" to-port="80"
#- new line
# rule family="ipv4" source address="192.168.122.1" forward-port port="5125" protocol="tcp" to-port="81"
#- new line
# rule family="ipv4" source address="192.168.122.1" forward-port port="5126" protocol="tcp" to-port="82"
#- new line

