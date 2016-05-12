class selectorstate
($packagename = $selectstate::params::packagename)
inherits selectstate::params
{
package {$packagename:
         ensure => installed
}
}
