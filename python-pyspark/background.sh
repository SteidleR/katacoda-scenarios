apt install openjdk-8-jdk --assume-yes

echo "Installing Hadoop" > /root/katacoda-installation

wget https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz
tar -zxf hadoop-3.2.3.tar.gz
mv hadoop-3.2.3 hadoop

echo "Installing Apache Spark" > /root/katacoda-installation

wget https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz
tar -xf spark-3.2.1-bin-hadoop3.2.tgz -C /usr/share
ln -s /usr/share/spark-3.2.1-bin-hadoop3.2/ /usr/share/spark
echo "SPARK_HOME=/usr/share/spark" >> ~/.bashrc
echo "PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin >> ~/.bashrc" >> ~/.bashrc
source ~/.bashrc

echo "Installing PySpark" > /root/katacoda-installation

python3 -m pip install pyspark

echo "done" > /root/katacoda-installation
