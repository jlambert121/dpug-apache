# == Class: apache
#
# Full description of class apache here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class apache (
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
  $docroot      = $::apache::params::docroot,
) inherits apache::params {

  validate_absolute_path($docroot)

  class { '::apache::install': } ->
  class { '::apache::service': } ->
  Class['::apache']

}
