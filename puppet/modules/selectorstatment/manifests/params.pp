class selectstate::params {
$packagename = $hostname ? {
               'RedHat' => 'tree',
               'client' => 'telnet',
                default => 'wget',
               }

}
