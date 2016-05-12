class casecondition::case { 
case $hostname  {
         'test1' : {
                    include httpdtest
                 }
         default : {
                     include package
}
}
}
