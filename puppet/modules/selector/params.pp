class selector::params
{
$somepackage = $::osfamily ? {
        'RedHat' => 'tree',
        'Debian' => 'wget',
         default => 'telnet',
}
}
