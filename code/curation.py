import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .enableHiveSupport() \
    .getOrCreate()

print("Fireshots URL")
print(spark.sparkContext.getConf().get("spark.nabu.fireshots_url"))


df = spark.sql("SELECT * from profile_test.source_db_chembl_action_type")

df.write.format("parquet").mode("overwrite").option("path", "hdfs:///user/ingestion/curation_alamren_hive.parquet").save()