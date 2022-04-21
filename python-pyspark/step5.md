Now, let's use pyspark for data filtering and transformation.

The PySpark SQL library is used for structured data processing and distributed SQL query. It allows to filter and transform the DataFrame by simple methods [7]. 

For this we will use the pyspark interactive shell. This automatically provides a Spark context as _sc_ and a Spark session as _spark_ at beginning.

`pyspark`{{execute}}

Later the pyspark sql functions will be needed, so let's first import them.

`from pyspark.sql import functions as F`{{execute}}

Let's load the dataset we saved as parquet from the last step.

`df  = spark.read.parquet("dataset", header=True, inferSchema=True)`{{execute}}

# Filtering

With the _DataFrame.filter_ we can filter the DataFrame by conditions. To show all women with an income greater than 70.000 we filter the data by checking if the column _Income_ is greater than 70.000 and if the column _Gender_ is equal to "female".

`df.filter((df.Income>=70000) & (df.Gender=="Female")).show()`{{execute}}

# Transforming

Apache Spark and PySpark supports many different transformation methods and functions for data cleaning.

To conditionally replace values, pyspark provides the _when_ function. With _orderBy_ we can simply order the data by column.  

`df.withColumn("Income", 
              F.when(df.Income > 0, True) \
                .otherwise(False).alias("NegativeIncome")
              ).orderBy("Income").show()`{{execute}}

The _groupby_ function is used to apply the grouping process analog to _GROUP BY_ in SQL queries and _sum_ will add all values together.

`df.select("City","Income").groupby("City").sum().show()`{{execute}}

Undesirable columns can be dropped from dataframe with

`df=df.drop("Illness")
df.show()`{{execute}}

# SQL

PySpark also supports using plain SQL queries. Therefore we first need to create a temporary view from the dataframe with

`df.createOrReplaceTempView("Persons")`{{execute}}

Then we can use _spark.sql_ to execute the SQL statements.

`spark.sql("SELECT * FROM Persons WHERE City LIKE 'Dallas'").show()`{{execute}}

---

Let's exit the pyspark shell:

`exit()`{{execute}}

And then continue with the last step in this scenario.

---

## Sources

[7] Useful PySpark SQL Functions for a Quick Start. [Online]. Available: https://towardsdev.com/useful-pyspark-sql-functions-for-a-quick-start-aae31d422a31