# == Class apache::service
#
# This class is meant to be called from apache.
# It ensure the service is running.
#
class apache::service (
  $service_name = $::apache::service_name,
){

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  service { $service_name:
    ensure => 'running',
    enable => true,
  }

}
