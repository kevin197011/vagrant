# app
class app::service inherits app {
  service { $app::service_name:
    ensure    => $app::service_ensure,
    subscribe => Package['app'],
    require   => Class['app::install']
  }
}
