In this step you will learn why you should use pyspark instead of pandas for big data. This will only give you a little insight in the differences between pyspark and pandas.

Pandas is one of the most popular frameworks for data analysis and the de-facto standard for working with structured tabular data on Python because it's fast, powerful, flexible and easy to use.  It also supports loading data in a so called DataFrame like PySpark. 

In very simple words Pandas run operations on a single machine whereas PySpark runs on multiple machines or multiple workers on one local machine. If you are working on a Machine Learning application where you are dealing with larger datasets, PySpark is a best fit which could processes operations many times(100x)
faster than Pandas [8].

Pandas also does not scale at all. It can only use a single CPU and the dataset will only be stored in RAM. This works for smaller datasets but with billions of lines of data, Pandas won't work well.  Spark and PySpark do not have any real limit due to the well scaling.

# Combining PySpark and Pandas
For smaller datasets it could be useful to combine the power of PySpark with Pandas because of the great functionality of both frameworks.
The most simple way to combine both is by converting between PySpark DataFrame and Pandas Dataframe. This allows developers to work with both frameworks and switch them on their needs.

`pyspark`{{execute}}
`import pandas as pd
df = spark.read.parquet("dataset", header=True, inferSchema=True)`{{execute}}

It's possible to create a Pandas DataFrame from a PySpark dataframe. This should be avoided except for smaller DataFrames. 

`df_pandas = df.toPandas()
type(df_pandas)`{{execute}}

We can also convert a Pandas DataFrame to a PySpark DataFrame. 

`df_spark = spark.createDataFrame(df_pandas)
type(df_spark)`{{execute}}
---

## Sources

[8] Pandas vs PySpark DataFrame With Examples. [Online]. Available: https://sparkbyexamples.com/pyspark/pandas-vs-pyspark-dataframe-with-examples/