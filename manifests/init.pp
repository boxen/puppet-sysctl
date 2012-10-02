class sysctl {

  # This is just a blank template. All contents are added with
  # `sysctl::set` calls.

  file { '/etc/sysctl.conf':
    group   => 'wheel',
    owner   => 'root',
    replace => false,
    source  => 'puppet:///modules/sysctl/sysctl.conf'
  }
}
