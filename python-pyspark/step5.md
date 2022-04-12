The next step is to use pyspark on real-word data. Therefore we use a dataset (See [toy-dataset](https://www.kaggle.com/datasets/carlolepelaars/toy-dataset)) from [kaggle](https://www.kaggle.com) in csv format. 

The PySpark DataFrame has a rich set of API which supports reading and writing many different file formats, including but not limited to [4]:
 - csv
 - text
 - Parquet
 - xml

The dataset is saved as [toy_dataset.csv](toy_dataset.csv). To load the dataset from file, pyspark provides a function to read csv and return a _DataFrame_ object.

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()

df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

df.printSchema()
</pre>

`python script.py`{{execute}}

# Describing the dataset

To have a look at the column names and to get a count of the number of rows of a DataFrame, pyspark provides following methods:

<pre class="file" data-filename="script.py" data-target="append">
print("Column names:", df.columns)

print("Number of rows:", df.count())
</pre>

The _describe_ method provides a summary of a particular column in a DataFrame. It returns the statistical summary of the column including count, mean and mininum and maximum values.

</pre>
df.describe().show()

df.describe("Income").show()
</pre>

`python script.py`{{execute}}

# Data Transformation

The PySpark SQL library is used for structured data processing and distributed SQL query. It allows to filter and transform the DataFrame by simple methods.
With the _DataFrame.filter_ we can filter the DataFrame by conditions [5].  

To show all women with an income greater than 60.000 we filter the data by checking if the column _Income_ is greater than 60.000 and if the column _Gender_ is equal to "female".

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()
df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

from pyspark.sql import functions as F

df_filter =  df.filter((F.col("Income") >= 60000) & (F.col("Gender") == "Female")).show()
</pre>

`python script.py`{{execute}}

---

## Sources

[4] Spark with Python (PySpark) Tutorial For Beginners. [Online]. Available: https://sparkbyexamples.com/pyspark-tutorial/ <br />
[5] Useful PySpark SQL Functions for a Quick Start. [Online]. Available: https://towardsdev.com/useful-pyspark-sql-functions-for-a-quick-start-aae31d422a31