#!/bin/bash
sleep 1; wait.sh

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export HADOOP_HOME=/root/hadoop
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native

clear