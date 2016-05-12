To install and configure Jenkins on CentOS we have to first install JAVA on the machine. Below are the steps to install JAVA on CentOS.

1
yum install java-1.6.0-openjdk
Verify the java by issuing the below command

1
java -version
Now we will add Jenkins Repository to our machine.

1
2
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
Now we will Install Jenkins

1
yum install jenkins
Add Jenkins to system boot

1
chkconfig jenkins on
Start Jenkins

1
service jenkins start
By default Jenkins will start on Port 8080. You can verify that with the below command.

1
netstat -tnlp | grep 8080
Go to your browser and type http://localhost:8080/. Now you should able to see the Jenkins dashboard like below image.

Jenkins-Dashboard-1Step – 2

Now we will setup Authentication for Jenkins. By default Jenkins allows “Anyone can do anything.”. Here we will setup Matrix based security authentication. For this follow the below steps:

Click on Manage Jenkins > Configure Global Security > Jenkins Own User Database > Allow Users to Signup > Save
