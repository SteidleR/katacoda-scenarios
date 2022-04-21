In this step you will learn why you should use pyspark instead of pandas for big data.

Pandas is one of the most popular frameworks for data analysis because it's fast, powerful, flexible and easy to use.  It also supports loading data in a so called DataFrame like pyspark.

In very simple words Pandas run operations on a single machine whereas PySpark runs on multiple machines or multiple workers on one local machine. If you are working on a Machine Learning application where you are dealing with larger datasets, PySpark is a best fit which could processes operations many times(100x) faster than Pandas [8].

# Comparison loading time

First import and initialize both libraries

<pre class="file" data-filename="script.py" data-target="replace">
import time
import pandas as pd
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()

</pre>

Both PySpark and Pandas can read data from various sources like csv, json and more. For PySpark we can use _spark.read._ method and For Pandas we have _pd.read\__ methods.

<pre class="file" data-filename="script.py" data-target="append">
t1 = time.time()
df_spark = spark.read.csv("toy_dataset_500k.csv", header=True, inferSchema=False)
t2 = time.time()
df_pd = pd.read_csv("toy_dataset_500k.csv")
t3 = time.time()

print("Spark loading time: ", t2-t1)
print("Pandas loading time: ", t3-t2)
</pre>

As you can see PySpark is much faster than pandas with inferSchema set to false. If the dataset had millions of data (currently it has 240.000 rows) the speed difference would be much higher. 


# DataFrame conversion

It's possible to create a Pyspark DataFrame from a Pandas dataframe.

<pre class="file" data-filename="script.py" data-target="append">
df_pandas_from_spark = spark.createDataFrame(df_spark)
</pre>

We can also convert a Pyspark DataFrame to a pandas DataFrame. This should be avoided though except for small DataFrames. 

<pre class="file" data-filename="script.py" data-target="append'>
df_spark.toPandas()
</pre>

---

## Sources

[8] Pandas vs PySpark DataFrame With Examples. [Online]. Available: https://sparkbyexamples.com/pyspark/pandas-vs-pyspark-dataframe-with-examples/