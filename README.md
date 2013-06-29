# SysCTL Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-sysctl.png?branch=master)](https://travis-ci.org/boxen/puppet-sysctl)

## Usage

```puppet
# define your own sysctl setting
# updates both running env and persists for reboots
sysctl::set { 'somekey':
  value => 'somevalue'
}

# we provide some defaults you can include
include sysctl::ipforwarding
```

## Required Puppet Modules

* stdlib
