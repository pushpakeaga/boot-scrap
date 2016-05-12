from fabric.api import run,sudo

def welcome():
       run("hostname")
       run("date")
       run("ifconfig |grep inet")

def install():
       sudo("yum -y install httpd")
       sudo("service httpd start")

def health():
      sudo("service httpd status")

def uninstall():
      sudo ("yum -y erase httpd")
