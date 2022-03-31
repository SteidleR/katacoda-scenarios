Let's have a look at using PySpark within a python program.

## Importing PySpark

First of all copy the script to the file editor. This will import the spark library and check the version.

A PySpark application starts by initializing a SparkSession from the _pyspark.sql_ library. This _SparkSession_ object is the entry point to all the Spark APIs [3].

<pre class="file" data-filename="pyspark-demo.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()

print("Version: ", spark.sparkContext.version)
</pre>

To execute the script, execute the following command.

`python pyspark-demo.py`{{execute}}

---

## Sources

[3] Quickstart: DataFrame. [Online]. Available: https://spark.apache.org/docs/latest/api/python/getting_started/quickstart_df.html