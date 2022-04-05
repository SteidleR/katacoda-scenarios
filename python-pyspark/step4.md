Let's start using Spark for simple data processing.

<pre class="file" data-filename="spark-version.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession, Row

spark = SparkSession.builder.getOrCreate()
</pre>

First of all, we create a simple data set and create a DataFrame from it in pyspark.

<pre class="file" data-filename="dataframe-demo.py" data-target="append">
data=(
  Row(1,”Joe”,22),
  Row(2,”Mary”,24),
  Row(3,”Ahmed”,44),
  Row(4,”John”,55)
)

data = spark.createDataFrame(data)

data.show()  # print data

data.printSchema() # print schema
</pre>

For printing the data from the DataFrame, we can use the function _data.show()_. The function _data.printSchema()_ will show us the schema, which was inferred by PySpark.

`python dataframe-demo.py`{{execute}}
