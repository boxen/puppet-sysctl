# SysCTL Puppet Module for Boxen

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
