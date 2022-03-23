apt install openjdk-8-jdk --assume-yes
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

wget https://www.apache.org/dyn/closer.lua/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz
tar -xvf spark-3.2.1-bin-hadoop3.2.tgz

export SPARK_HOME=/root/spark-3.2.1-bin-hadoop3.2
export PATH=$PATH:$SPARK_HOME/bin
export PATH=$PATH:~/anaconda3/bin
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
# export PYSPARK_DRIVER_PYTHON="jupyter"
# export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export PATH=$PATH:$JAVA_HOME/jre/bin

python3 -m pip install pyspark