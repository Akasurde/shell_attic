#!/bin/bash

if [ -f ./useradd.ldif ]; then
    rm -rf ./useradd.ldif
fi 

for i in `seq -w 01 05`;
do
    echo "dn: uid=puser$i,ou=People,dc=example,dc=com
    passwordGraceUserTime: 0
    uidNumber: 10$i
    gidNumber: 10$i
    objectClass: top
    objectClass: person
    objectClass: posixAccount
    uid: puser$i
    cn: Posix User$i
    sn: User$i
    homeDirectory: /home/puser$i
    loginshell: /bin/bash
    userPassword: Secret123
    creatorsName: uid=admin,ou=administrators,ou=topologymanagement,o=netscaperoot
    modifiersName: uid=admin,ou=administrators,ou=topologymanagement,o=netscaperoot
    " >> useradd.ldif
done

/usr/bin/ldapmodify -a -x -h $HOSTNAME -p 389 -D "cn=Directory Manager" -w Secret123 -c -f ./useradd.ldif
