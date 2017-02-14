class nginx {
  package { "nginx":
    ensure => installed,
  }->
  file { "default":
    path => '/usr/share/nginx/html/index.html',
    ensure => file,
    source => 'puppet:///modules/nginx/hello_world.html',
    owner => 'root',
    group => 'root',
    mode => '0644',
    notify => Service['nginx'],
  }->
  service { "nginx":
    ensure => running,
  }
}
