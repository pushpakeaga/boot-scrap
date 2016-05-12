define customresource::abcd
(
$file,
)
{
file {$file:
       ensure => directory,
       recurse => true,
     }
}
