Now, let's use pyspark for data transformation.

# Filtering

The PySpark SQL library is used for structured data processing and distributed SQL query. It allows to filter and transform the DataFrame by simple methods.
With the _DataFrame.filter_ we can filter the DataFrame by conditions [5].  

To show all women with an income greater than 70.000 we filter the data by checking if the column _Income_ is greater than 70.000 and if the column _Gender_ is equal to "female".

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()
df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

from pyspark.sql import functions as F

df_filter =  df.filter((F.col("Income") >= 60000) & \
                       (F.col("Gender") == "Female")).show()
</pre>

`python script.py`{{execute}}

---

## Sources

[5] Useful PySpark SQL Functions for a Quick Start. [Online]. Available: https://towardsdev.com/useful-pyspark-sql-functions-for-a-quick-start-aae31d422a31