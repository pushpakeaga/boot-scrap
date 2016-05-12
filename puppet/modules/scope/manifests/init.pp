class scope
{
#$package = 'tree'
package {'some-package':
      name => $package,
      ensure => absent,
}
}
