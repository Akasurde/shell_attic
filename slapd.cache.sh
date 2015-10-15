#!/bin/bash

ldapmodify -D "cn=directory manager" -w Secret123 <<EOF
dn: cn=userRoot,cn=ldbm database,cn=plugins,cn=config
changetype: modify
replace: nsslapd-cachesize
nsslapd-cachesize: -1
-
replace: nsslapd-cachememsize
nsslapd-cachememsize: 400000000
-
replace: nsslapd-dbcachesize
nsslapd-dbcachesize: 80000000
-
replace: nsslapd-dncachememsize
nsslapd-dncachememsize: 40000000
-
replace: nsslapd-import-cache-autosize
nsslapd-import-cache-autosize: -1
-
replace: nsslapd-import-cachesize
nsslapd-import-cachesize: 40000000
-

EOF
