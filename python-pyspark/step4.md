The next step is to use pyspark for reading and writing data. Therefore we use a dataset (See [toy-dataset](https://www.kaggle.com/datasets/carlolepelaars/toy-dataset)) from [kaggle](https://www.kaggle.com) in csv format. 

The PySpark DataFrame has a rich set of API which supports reading and writing many different file formats, including but not limited to [4]:
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

df  = spark.read.csv("toy_dataset.csv", header=True, inferSchema=True)

df.describe().show()
</pre>

The _describe_ method provides a summary of a particular column in a DataFrame. It returns the statistical summary of the column including count, mean and mininum and maximum values.

`python script.py`{{execute}}

# Writing to file

To export the dataset to a Parquet file, pyspark provides simple methods to use.

<pre class="file" data-filename="script.py" data-target="insert" data-marker="df.describe().show()">
df.write.format(“parquet").mode("overwrite").save("outputPath")
</pre>

The same applies for CSV, JSON and all other file formats.

---

## Sources

[4] Spark with Python (PySpark) Tutorial For Beginners. [Online]. Available: https://sparkbyexamples.com/pyspark-tutorial/ <br />
