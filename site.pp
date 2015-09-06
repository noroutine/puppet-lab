node 'lu1.server.lu' {
  include ntp
  include docker

  class { 'docker':
    manage_kernel => false,
  }

  docker::image { 'ubuntu':
    image_tag => 'precise',
  }
  docker::run { 'helloworld':
    image => 'base',
    command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  }
}
