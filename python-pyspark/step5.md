Now, let's use pyspark for data filtering and transformation.

The PySpark SQL library is used for structured data processing and distributed SQL query. It allows to filter and transform the DataFrame by simple methods.
With the _DataFrame.filter_ we can filter the DataFrame by conditions [6].  

To show all women with an income greater than 70.000 we filter the data by checking if the column _Income_ is greater than 70.000 and if the column _Gender_ is equal to "female".

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()
df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

from pyspark.sql import functions as F

df.filter((df.Income>=70000) & (df.Gender=="Female")).show()
</pre>

`python script.py`{{execute}}

Apache Spark and PySpark supports many different transformation methods and functions for data cleaning.

To conditionally replace values, pyspark provides the _when_ function. With _orderBy_ we can simply order the data by column.  

<pre class="file" data-filename="script.py" data-target="insert" data-marker='df.filter((df.Income>=70000) & (df.Gender=="Female")).show()'>
df.withColumn("Income", 
              F.when(df.Income > 0, True) \
                .otherwise(False).alias("NegativeIncome")
              ).orderBy("Income").show()
</pre>

`python script.py`{{execute}}

With _groupby_ and _sum_ we can check the income per city.

<pre class="file" data-filename="script.py" data-target="insert" data-marker='df.withColumn("Income", 
              F.when(df.Income > 0, True) \
                .otherwise(False).alias("NegativeIncome")
              ).orderBy("Income").show()'>
df.select("City","Income").groupby("City").sum().show()
</pre>

`python script.py`{{execute}}

---

## Sources

[6] Useful PySpark SQL Functions for a Quick Start. [Online]. Available: https://towardsdev.com/useful-pyspark-sql-functions-for-a-quick-start-aae31d422a31