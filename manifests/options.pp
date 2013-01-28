class dns::options (
  $options='',
  $forward_ips='',
) {
  
  file { "/etc/bind/named.conf.options":
    owner   => root,
    group   => bind,
    mode    => 644,
    require => Class['dns::server::config'],
    source  => template('dns/named_conf_options.erb'),
    notify  => Class['dns::server::service'],
  }

}
