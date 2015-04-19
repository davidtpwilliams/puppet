#!/bin/sh
# We are creating and AWS EC2 instance that is a LAMP instance
# Linux Apache Mysql Php
# We also want to keep a record of the InstanceId in a fil for tagging
# Also for testing if we want top delete the new instance then 
# we can run the "terminate" which reads the file instance. 

if [ $# -eq 0 ]
then
   echo "ERROR: Wrong number of parameters!"
   echo "Usage: create_lamp.sh <number>"
   exit
fi

# First create lamp server then tag
# The lamp.data file is in #!bin/sh format
./cloud-config "$(< lamp.data)" |grep InstanceId | sed -e 's/[:," ]//g' -e 's/InstanceId//g' > instance
./tagit "$(< instance)" $1
