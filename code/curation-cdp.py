import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .enableHiveSupport() \
    .getOrCreate()

print("Fireshots URL")
print(spark.sparkContext.getConf().get("spark.nabu.fireshots_url"))


df = spark.sql("SELECT * from nabu_test.cu_db_chembl_action_type")

df.write.format("parquet").mode("overwrite").option("path", "s3a://cdpmodakbucket/cdpdevenv/data/warehouse/tablespace/external/hive/test/cu_cde_db_chembl_action_type").save()