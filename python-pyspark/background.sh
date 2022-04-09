apt install openjdk-8-jdk --assume-yes
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

wget https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz
tar xzf hadoop-3.2.3.tar.gz
mv hadoop-3.2.3 hadoop

export HADOOP_HOME=/root/hadoop

python3 -m pip install pyspark
python3 -m pip install pyspark[sql]