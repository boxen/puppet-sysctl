class sysctl::ipforwarding {
  sysctl::set { 'net.inet.ip.forwarding':
    value => 1
  }
}
