# app
class app(
  String $package_name = 'ntp',
  String $package_ensure = 'installed',
  String $service_name = 'ntpd',
  String $service_ensure = 'running',
  String $config_file = '/etc/ntpd.conf',
){
  contain app::install
  contain app::config
  contain app::service

  Class['::app::install']
  -> Class['::app::config']
  ~> Class['::app::service']
}
