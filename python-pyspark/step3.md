Let's have a look at using PySpark within a python program.

## Importing PySpark

A PySpark application starts by initializing a _SparkSession_ from the _pyspark.sql_ library. This _SparkSession_ object is the entry point to all the Spark APIs [3].

<pre class="file" data-filename="spark-version.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
</pre>

To get the currently installed version of PySpark, use the _sparkContext.version_ attribute.

<pre class="file" data-filename="spark-version.py" data-target="append">
print("Version: ", spark.sparkContext.version)
</pre>

Now, execute the script to view the result.

`python spark-version.py`{{execute}}

You should now see the 'Version: _(Some Version number)_' in the terminal.

---

## Sources

[3] Quickstart: DataFrame. [Online]. Available: https://spark.apache.org/docs/latest/api/python/getting_started/quickstart_df.html