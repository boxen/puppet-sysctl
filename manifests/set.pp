# Set a sysctl key to a value, both as a live and persisted setting.
#
# Examples:
#
#    sysctl::set { 'key':
#      value => 'desired_value'
#    }
define sysctl::set($value) {
  require sysctl

  exec { "set-${name}-sysctl":
    command => "sysctl -w ${name}=${value}",
    unless  => "sysctl ${name} | grep ${value}",
    user    => 'root'
  }

  file_line { "/etc/sysctl.conf ${name}=${value}":
    line    => "${name}=${value}",
    path    => '/etc/sysctl.conf',
    require => File['/etc/sysctl.conf']
  }
}
