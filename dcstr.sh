#!/bin/bash

server="abctest.example.com"

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

updomain=`echo $domain |  tr '[:lower:]' '[:upper:]'`
kinit="Administrator@$updomain"

echo $domain
echo $updomain
echo $kinit
