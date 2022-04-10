The next step is to use pyspark on real-word data. Therefore we use a dataset (See [toy-dataset](https://www.kaggle.com/datasets/carlolepelaars/toy-dataset)) from [kaggle](https://www.kaggle.com) in csv format. 

<pre class="file" data-filename="step4.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession, Row

spark = SparkSession.builder.getOrCreate()
</pre>

The PySpark DataFrame has a rich set of API which supports reading and writing many different file formats, including but not limited to [4]:
 - csv
 - text
 - Parquet
 - xml

The dataset is saved as [toy_dataset.csv](toy_dataset.csv). To load the dataset from file, pyspark provides a function to read csv and return a _DataFrame_ object.

<pre class="file" data-filename="step4.py" data-target="append">
df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

df.printSchema()
</pre>

# Describing the dataset

To have a look at the column names and to get a count of the number of rows of a DataFrame, pyspark provides following methods:

<pre class="file" data-filename="step4.py" data-target="append">
print("Column names:", df.columns)

print("Number of rows:", df.count())
</pre>

The _describe_ method provides a summary of a particular column in a DataFrame. It returns the statistical summary of the column including count, mean and mininum and maximum values.

<pre class="file" data-filename="step4.py" data-target="append">
df.describe().show()

df.describe("Income").show()
</pre>

---

## Sources

[4] Spark with Python (PySpark) Tutorial For Beginners. [Online]. Available: https://sparkbyexamples.com/pyspark-tutorial/
