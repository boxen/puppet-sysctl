# Sets net.inet.ip.forwarding sysctl value to 1.
#
# Examples
#
#   include sysctl::ipforwarding
class sysctl::ipforwarding {
  sysctl::set { 'net.inet.ip.forwarding':
    value => 1
  }
}
