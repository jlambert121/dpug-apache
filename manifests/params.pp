# == Class apache::params
#
# This class is meant to be called from apache.
# It sets the default parameters
#
class apache::params {
  $docroot = '/var/www/html'
  case $::osfamily {
    'RedHat': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}