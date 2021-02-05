# app
class app::config inherits app {
  file { $app::config_file:
    ensure => file,
    owner  => 'root',
    source => "puppet:///modules/${module_name}/ntpd.conf"
  }
}
