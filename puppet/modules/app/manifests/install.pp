# app
class app::install inherits app {
  package { $app::package_name:
    ensure => $app::package_ensure
  }
}
