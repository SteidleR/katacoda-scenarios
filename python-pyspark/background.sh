apt install openjdk-8-jdk --assume-yes
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

python3 -m pip install pyspark
python3 -m pip install pyspark[sql]