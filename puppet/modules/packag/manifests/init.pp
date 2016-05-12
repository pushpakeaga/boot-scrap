class packag
(
$test = $package::params::test,
$content = $package::params::content,
$group = $package::params::group,
$owner = $package::params::owner,
)
inherits package::params {
file  { 'file':
       name     => $test,
       ensure   => file,
       content  => $content,
       group    => $group,
       owner    => $owner,
}
}
