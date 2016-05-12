class caseconition::select {
$packname = $osfamily ? {
        'RedHat' => 'wget',
        'ubuntu' => 'tree',
        'Debian' => 'telnet',
         default =>  'bind',
}

package { $packname:
           ensure => present,
}
}
