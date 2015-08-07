#!/usr/bin/env bash

# This is script which installs 
# all dependencies required to create FreeIPA server development envirnoment
#

# Created and tested on Fedora 22 and Free IPA - 4.2
dnf install -y 389-ds-base-devel.x86_64 isofthsm-devel pki-base python-dns python-netaddr  python-krbv python-krbV python-nss python-hbac python-libipa_hbac.x86_64 python-qrcode python-usb pyusb python-yubico python-kerberos.x86_64 python-cryptography.x86_64 python-cryptography python-setuptools dh-autoreconf.noarch popt-devel libcurl-devel xmlrpc-c-devel-1.32.5-1906.svn2451.fc22.x86_64 libuuid-devel-2.26.2-1.fc22.x86_64 libtalloc.x86_64 libtalloc-devel.x86_64 libtevent-devel.x86_64 krb5 krb5-devel samba-libs krb5-devel-1.13.2-5.fc22.x86_64   samba-devel  libunistring-devel-0.9.4-1.fc22.x86_64  pylint rpmbuild rpmbuild-devel rpm-devel samba-python m2crypto p11-kit-devel pyOpenSSL python-devel python-kdcproxy python-lesscpy python-memcached python-polib python-pytest-multihost python-pytest-sourceorder python-rhsm rhino libwbclient-devel
