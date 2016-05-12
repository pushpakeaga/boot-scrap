class tempdemo
(
$user = "puppet",
$purpose  = "testing-class"
)

 {
file {"/tmp/abcdefg.txt":
       ensure => file,
       #content => "This is a file for template demo"
       # source => "puppet:///modules/tempdemo/sourcetest.txt"
       content => template('tempdemo/temptest.erb')
}

}
~                                                                                       
~        
