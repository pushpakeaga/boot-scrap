class packages::array {
package { ['tree','ftp','telnet']:
          ensure => present,
}
}       
#Arrays are collection of items
#example [1,2,3,4]
#more on arrays...
