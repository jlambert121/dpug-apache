# == Define apache::html_file
#
# This devine installs static HTML files to the host
#
define apache::html_file (
  $source,
  $docroot = $::apache::docroot,
) {

  if ! defined(Class['apache']) {
    fail("[Apache::Html_file::${name}]: You must include the apache base class before using any apache defined resources")
  }

  validate_re($source, '\.html$', "[Apache::Html_file::${name}]: source must be a html file")

  if $name =~ /\.html$/ {
      $_name = $name
    } else {
      $_name = "${name}.html"
    }

  file { "${docroot}/${_name}":
    source => $source,
  }

}