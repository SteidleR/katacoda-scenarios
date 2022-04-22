The next step is to use pyspark for reading and writing data. Therefore we use a dataset (See [toy-dataset](https://www.kaggle.com/datasets/carlolepelaars/toy-dataset)) from [kaggle](https://www.kaggle.com) in csv format. 

The PySpark DataFrame has a rich set of APIs which supports reading and writing many different file formats, including but not limited to [5]:
 - csv
 - text
 - Parquet
 - xml
 - json

# Reading

The dataset is saved as [toy_dataset.csv](toy_dataset.csv). To load the dataset from file, pyspark provides a function to read csv and return a _DataFrame_ object.

<pre class="file" data-filename="script.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.getOrCreate()

df = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)
</pre>

With _.show()_ we can display the top rows. It takes a integer as parameter which gives the number of rows to display. Similarly, the _.take()_ function will return the given number of rows from top as a list of the _Row_ objects.

<pre class="file" data-filename="script.py" data-target="append">
df.show(3)
</pre>

`python script.py`{{execute}}

The _describe_ method provides a summary of a particular column in a DataFrame. It returns the statistical summary of the column including count, mean and mininum and maximum values.

<pre class="file" data-filename="script.py" data-target="insert" data-marker="df.show(3)">
df.describe().show()
</pre>

`python script.py`{{execute}}

# Writing to file

To export the dataset to a Parquet file, pyspark provides simple methods to use.

<pre class="file" data-filename="script.py" data-target="insert" data-marker="df.describe().show()">
df.write.format("parquet").mode("overwrite").save("dataset")
</pre>

`python script.py`{{execute}}

Looking in the folder dataset, we can see the parquet files.

`ls dataset`{{execute}}

The same applies for CSV, JSON and all other data file formats. Simply change the parameter of the _DataFrame.write.format_ method to the destination format.

---

## Sources

[5] Spark with Python (PySpark) Tutorial For Beginners. [Online]. Available: https://sparkbyexamples.com/pyspark-tutorial/ <br />
[6] Apache Spark Tutorial — How to Read and Write Data With PySpark. [Online]. Available: https://towardsdatascience.com/spark-essentials-how-to-read-and-write-data-with-pyspark-5c45e29227cd
