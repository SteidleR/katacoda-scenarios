PySpark is a library for processing data with Spark in Python.

# Installing the PySpark library

To install the python spark library, execute the following command in the terminal:

`pip install pyspark`{{execute}}

# Importing PySpark

First of all copy the script to the file editor. This will import the spark library and check the version.

<pre class="file" data-filename="pyspark.py" data-target="replace">
import pyspark
from pyspark.sql import Sparksession

spark = SparkSession.builder().master("local[1]").appName("SparkByExamples.com").getOrCreate()

print("Version: ", spark.sparkContext.version)
</pre>

To execute the script and check if pyspark was imported correctly, execute the following command.

`python pyspark.py`{{execute}}

If there isn't any error, everything went well and pyspark was installed successfully using pip.
