These files will generate an AWS EC2 instance on Linux with Apache, MySQL and PHP installed.  This is done remotely
from anywhere as long as you have an account and a key pair.
The first part is to create a new machine from an AMI and then run the commands in user_data.  The first interation uses
the #!/bin/sh rather than #cloud-config directive. 
After completion you can connect to a web page with the php information displayed.
create_cloud.sh => Main program
