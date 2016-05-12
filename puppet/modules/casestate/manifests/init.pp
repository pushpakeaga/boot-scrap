class casestate {
case $::osfamily {
      #'RedHat': {$somepackage = 'telnet'}
      'Debian': {$somepackage = 'tree'}
       default: {$somepackage = 'wget'}
}
package {'some-package':
      name => $somepackage,
      ensure => present,
}
}
