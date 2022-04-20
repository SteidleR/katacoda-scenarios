Let's start using Spark for simple data processing. 

As like in the previous step, we first need to create a new _SparkSession_.

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
</pre>

We define a simple data set and create a DataFrame from it in pyspark.

<pre class="file" data-filename="script.py" data-target="append">
from pyspark.sql import Row

data = (
  Row(1,"Joe",22),
  Row(2,"Mary",24),
  Row(3,"Ahmed",44),
  Row(4,"John",55)
)

data = spark.createDataFrame(data)

data.show()  # print data

data.printSchema() # print schema
</pre>

For printing the data stored in the DataFrame, we can use the function _data.show()_. The function _data.printSchema()_ will print the schema, which was inferred by PySpark.

`python script.py`{{execute}}