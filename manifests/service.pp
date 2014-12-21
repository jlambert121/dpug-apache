# == Class apache::service
#
# This class is meant to be called from apache.
# It ensure the service is running.
#
class apache::service {

  service { 'httpd':
    ensure => 'running',
    enable => true,
  }

}
