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
    domain=$1
fi

ORGIFS=$IFS
IFS="." read -r -a domainarray <<< $domain
IFS=$ORGIFS

dcstr=""
for element in "${domainarray[@]}"
do
    if [[ x"$dcstr" == x"" ]]; then
        dcstr="dc=$element"
    else
        dcstr="$dcstr,dc=$element"
    fi
done

echo $dcstr
