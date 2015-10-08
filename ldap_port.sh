#!/bin/bash

echo "dn: cn=config
changetype: modify
replace: nsslapd-port
nsslapd-port: 3389" > ldap_port.ldif

/usr/bin/ldapmodify -x -h $HOSTNAME -p 389 -D "cn=Directory Manager" -w Secret123 -c -f ./ldap_port.ldif
