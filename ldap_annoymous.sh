#!/bin/bash

echo "dn: cn=config
changetype: modify
replace: nsslapd-allow-anonymous-access
nsslapd-allow-anonymous-access: off" > ldap_annoymous.ldif

/usr/bin/ldapmodify -x -h $HOSTNAME -p 389 -D "cn=Directory Manager" -w Secret123 -c -f ./ldap_annoymous.ldif
/usr/bin/ldapsearch -h $HOSTNAME -b "dc=TESTRELM,dc=TEST" -s one -x

if [[ $? -eq 48 ]]; then
    echo "Anonymous bind is disabled"
else
    echo "Something went wrong"
fi
