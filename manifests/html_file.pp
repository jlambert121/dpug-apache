define apache::html_file (
  $source,
) {

  file { "/var/www/html/${name}":
    source => $source,
  }

}