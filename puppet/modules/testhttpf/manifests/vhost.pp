define testhttpd::vhost 
(
$port,
$document_root,
$servername,
$vhost_dir,
$log_dir
)
{
/*
$port = "80"
$log_dir = "/var/log/httpd"
$vhost_dir = "/etc/httpd/conf.d"
$servername = "slave.localdomain"
$document_root = "/var/www/website"
*/

include testhttpd
file {$document_root:
     ensure => directory,
     recurse => true,
     }
file {$log_dir:
     ensure => directory,
     recurse => true,
     }
file {"centaurus":
     path => "${document_root}/centaurus.html",
     ensure => file,
     content => template('testhttpd/centaurus.html.erb'),
     }
file {"vhost_file":
     path => "${vhost_dir}/${servername}.conf",
     content => template('testhttpd/vhost.conf.erb'),
    }
}
