node 'lu1.server.lu' {
  include ntp
  class { 'docker':
    manage_kernel => false,
  }
  docker::image { 'ubuntu':
    image_tag => 'precise'
  }
}
