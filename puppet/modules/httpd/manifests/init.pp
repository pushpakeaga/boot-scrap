class httpd {
file { “/etc/httpd/conf/httpd.conf”:
ensure => present,
require => Package[‘httpd’],
#notify => Service[‘httpd’],
}
service { “httpd”:
ensure => running,
enable => false,
}
package { “httpd”:
ensure => present
}
}
