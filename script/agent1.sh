#!/bin/bash

echo 10.10.10.1 C1 > /etc/hosts
echo 10.10.11.2 C2 >> /etc/hosts
echo 10.10.10.2 A1 >> /etc/hosts
echo 10.10.12.2 A2 >> /etc/hosts

sudo apt-get update
sudo apt-get install --yes default-jdk
cd /tmp/
wget http://www.moses.rutgers.edu/downloads/moses.jar
jar xvf moses.jar
echo export 'CLASSPATH=$CLASSPATH:/tmp/:/tmp/jinni.jar:/tmp/xerces.jar:/usr/lib/jvm/java-6-openjdk/lib/tools.jar:/tmp/moses.jar' >> /etc/profile
source /etc/profile
wget http://www.moses.rutgers.edu/examples/layered/SomeAgent.java
wget http://www.moses.rutgers.edu/examples/simple/simple.java1
wget http://www.moses.rutgers.edu/examples/pingpong/Pingpong.java1
javac SomeAgent.java

