apt install openjdk-8-jdk --assume-yes
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

wget https://www.apache.org/dyn/closer.lua/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz
tar -xvf spark-3.2.1-bin-hadoop3.2.tgz -C /usr/share
ln -s /usr/share/spark-3.2.1-bin-hadoop3.2/ spark
echo "SPARK_HOME=/usr/share/spark" >> ~/.bashrc
echo "PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin" >> ~/.bashrc" >> ~/.bashrc
source ~/.bashrc

python3 -m pip install pyspark
python3 -m pip install pyspark[sql]