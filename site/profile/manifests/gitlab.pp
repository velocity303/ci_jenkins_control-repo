class profile::gitlab { 
  class { '::gitlab':
    external_url   => "http://${::fqdn}",
    package_ensure => '8.5.1-ce.0.el7',
  }
}
