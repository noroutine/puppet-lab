node 'lu1.server.lu' {
  include ntp

  package { 'lsb-release':
    ensure => "installed",
  }

  class { 'docker':
    manage_kernel => false,
  }

  docker::image { 'base':
  }

  docker::run { 'helloworld':
    image => 'base',
    command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  }
}
