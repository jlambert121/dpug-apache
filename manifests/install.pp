# == Class apache::install
#
# This class is called from apache for install.
#
class apache::install (
  $package_name = $::apache::package_name,
){

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  package { $package_name:
    ensure => 'installed',
  }

}
