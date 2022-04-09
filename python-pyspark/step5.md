The next step is to use pyspark on real-word data. Therefore we use a dataset (See [toy-dataset](https://www.kaggle.com/datasets/carlolepelaars/toy-dataset)) from [kaggle](https://www.kaggle.com) in csv format.

<pre class="file" data-filename="step4.py" data-target="replace">
import pyspark
from pyspark.sql import SparkSession, Row

spark = SparkSession.builder.getOrCreate()
</pre>

The dataset is saved as [toy_dataset.csv](toy_dataset.csv). To load the dataset from file, pyspark provides a function to read csv and return a _DataFrame_ object.

<pre class="file" data-filename="step4.py" data-target="append">
df  = spark.read.csv("toy_dataset.csv")

df.printSchema()
</pre>
