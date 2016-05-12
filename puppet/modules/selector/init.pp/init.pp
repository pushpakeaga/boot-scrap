class selector
($somepackage = $selector::params::somepackage)
inherits selector::params
{
package {'some-package':
        name => $somepackage,
        ensure => present,
}
}
