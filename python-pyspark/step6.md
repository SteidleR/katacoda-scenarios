In this step you will learn why you should use pyspark instead of pandas for big data.

Pandas is one of the most popular frameworks for data analysis because it's fast, powerful, flexible and easy to use.  It also supports loading data in a so called DataFrame like pyspark.

In very simple words Pandas run operations on a single machine whereas PySpark runs on multiple machines. If you are working on a Machine Learning application where you are dealing with larger datasets, PySpark is a best fit which could processes operations many times(100x) faster than Pandas [8].

# DataFrame conversion

It's possible to create a Pyspark DataFrame from a Pandas dataframe.

<pre class="file" data-filename="script.py" data-target="insert" data-marker='df.filter((df.Income>=70000) & (df.Gender=="Female")).show()'>
df_pandas_from_spark = spark.createDataFrame(df_spark)
</pre>

We can also convert a Pyspark DataFrame to a pandas DataFrame. This should be avoided though except for small DataFrames. 

<pre class="file" data-filename="script.py" data-target="insert" data-marker='df_pandas_from_spark = spark.createDataFrame(df_spark)'>
df_spark.toPandas()
</pre>

---

## Sources

[8] Pandas vs PySpark DataFrame With Examples. [Online]. Available: https://sparkbyexamples.com/pyspark/pandas-vs-pyspark-dataframe-with-examples/