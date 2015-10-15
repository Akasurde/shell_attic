#!/bin/bash

yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum install -y http://rdo.fedorapeople.org/openstack-kilo/rdo-release-kilo.rpm
yum install -y openstack-selinux
yum localinstall -y ftp://ftp.muug.mb.ca/mirror/centos/7.1.1503/os/x86_64/Packages/python-docutils-0.11-0.2.20130715svn7687.el7.noarch.rpm
yum install -y openstack-packstack
