apt install openjdk-8-jdk --assume-yes
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

wget https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz
tar -zxf hadoop-3.2.3.tar.gz
mv hadoop-3.2.3 hadoop

wget https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz
tar -xf spark-3.2.1-bin-hadoop3.2.tgz -C /usr/share
ln -s /usr/share/spark-3.2.1-bin-hadoop3.2/ /usr/share/spark
echo "SPARK_HOME=/usr/share/spark" >> ~/.bashrc
echo "PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin >> ~/.bashrc" >> ~/.bashrc
source ~/.bashrc

python3 -m pip install pyspark

export HADOOP_HOME=/root/hadoop
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native

echo "done" >> /root/katacoda-finished
