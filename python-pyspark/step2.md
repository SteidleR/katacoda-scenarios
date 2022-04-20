PySpark is a library for processing data with Apache Spark in Python. It provides the APIs for using spark functionality within python or in a standalone pyspark command line.

## Installing the PySpark library

Installing the library is easy because it's distributed with the pip package manager. This means that you can install the PySpark library directly with the following command:

`pip install pyspark`{{execute}}

As you can see, pyspark is already installed.

## Test installation

To test the installation, execute the following command in the terminal:

`pyspark`{{execute}}

This will open the PySpark shell in the terminal. If there isn't any error, everything went well and pyspark was installed successfully using pip. The pyspark shell is a interactive python shell with predefined spark session variables.

Stop the pyspark cli with `exit()`{{execute}}

## Get started with PySpark

A PySpark application starts by initializing a _SparkSession_ from the _pyspark.sql_ library. This _SparkSession_ object is the entry point to all the Spark APIs [4]. <br />
The PySpark SQL library establishes a connection between the distributed dataset and the relational table and provides integration between relational and procedural processing.

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
</pre>

To get the currently installed version of PySpark, use the _sparkContext.version_ attribute.

<pre class="file" data-filename="script.py" data-target="append">
print("Version: ", spark.sparkContext.version)
</pre>

Now, execute the script to view the result.

`python script.py`{{execute}}

You should now see the 'Version: _(Some Version number)_' in the terminal.

---

## Sources

[4] Quickstart: DataFrame. [Online]. Available: https://spark.apache.org/docs/latest/api/python/getting_started/quickstart_df.html