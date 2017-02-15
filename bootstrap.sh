#!/usr/bin/env bash
sudo yum -y install epel-release
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
sudo yum -y install puppet git tree
