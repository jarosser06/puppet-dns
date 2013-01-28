class dns::options (
  $named_options='',
  $forward_ips='',
) {
  
  file { "/etc/bind/named.conf.options":
    ensure  => present,
    owner   => root,
    group   => bind,
    mode    => 644,
    require => Class['dns::server::config'],
    source  => template('dns/named_conf_options.erb'),
    notify  => Class['dns::server::service'],
  }

}
