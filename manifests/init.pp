# == Class: apache
#
# Full description of class apache here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class apache {

  class { '::apache::install': } ->
  class { '::apache::service': } ->
  Class['::apache']

}
