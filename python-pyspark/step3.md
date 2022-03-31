# Importing PySpark

First of all copy the script to the file editor. This will import the spark library and check the version.

<pre class="file" data-filename="pyspark-demo.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()

print("Version: ", spark.sparkContext.version)
</pre>

To execute the script, execute the following command.

`python pyspark-demo.py`{{execute}}
