class dependency {
file { "/etc/httpd/conf/httpd.conf":
       ensure => file,
       source => "puppet:///modules/httpdtest/httpd.conf",
      # require => Package['pack'],
      }
package { 'pack':
       name => "httpd",
       ensure => present,
       before => File['/etc/httpd/conf/httpd.conf'],
       notify => Service['serv'],
        }
service { 'serv':
      name => "httpd",
      ensure => running,
}
}
