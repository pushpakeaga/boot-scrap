class httpd
(
$package = $httpd::params::package,
$package_ensure = $httpd::params::package_ensure,
$config_file = $httpd::params::config_file,
$file_ensure = $httpd::params::file_ensure,
$file_source = $httpd::params::file_source,
$service = $httpd::params::service,
$service_ensure = $httpd::params::service_ensure,
$service_enable = $httpd::params::service_enable,
$file_content = $httpd::params::file_content,
)inherits httpd::params
{
case $::osfamily {
       'RedHat': {
     
     package {$package:
              ensure => $package_ensure,
              before => File[$config_file]
              }
     
     file {$config_file:
            ensure => $file_ensure,
            #source => $file_source,
            content => $file_content,
            notify => Service[$service]
            }
     service {$service:
             ensure => $service_ensure,
             enable => $service_enable,
             require => Package[$package]
          }  
         }
       'Debian': {   
           package {$package:
              ensure => $package_ensure,
              }

     file {$config_file:
            ensure => $file_ensure,
            source => $file_source,
            }
     service {$service:
             ensure => $service_ensure,
             enable => $service_enable
          }
          }
        default: { 
         pacakge{"telnet":
               ensure => installed
   }
}
}
