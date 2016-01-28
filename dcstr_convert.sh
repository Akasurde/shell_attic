#!/bin/bash
#
# Script to convert Domain name in ldap dcstr
#
if [[ x"$1" == x"" ]]; then
    echo "ERROR : Domain name required"
    echo "Help "
    echo "$(basename $0) <domain_name>"
    exit 1
else
    server=$1
fi

ORGIFS=$IFS
IFS="." read -r -a domainarray <<< $server
IFS=$ORGIFS

dcstr=""
domain=""
for element in "${domainarray[@]:1}"
do
    if [[ x"$dcstr" == x"" ]]; then
        dcstr="dc=$element"
    else
        dcstr="$dcstr,dc=$element"
    fi

    if [[ x"$domain" == x"" ]]; then
        domain=$element
    else
        domain="$domain.$element"
    fi
done

echo "Server : $server"
echo "Domain : $domain"
echo "Dcstr  : $dcstr"
