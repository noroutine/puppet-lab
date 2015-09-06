node 'lu1.server.lu' {
  include ntp
  include docker

  class { 'docker':
    manage_kernel => false,
  }

  docker::image { 'ubuntu':
    image_tag => 'precise'
  }
}
