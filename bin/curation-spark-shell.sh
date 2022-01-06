cat  nabu-poc-curation/code/curation.scala | spark-shell --master yarn \
--packages "com.github.music-of-the-ainur:almaren-framework_2.11:0.9.0-2.4" \
--jars "$NABU_SPARK_BOT_HOME/jars/nabu-sparkbot-lib-common-assembly-0.8.6.jar" \
--conf spark.driver.args="hdfs:///user/ingestion/curation_alamren.parquet" \
--executor-cores 1 \
--num-executors 2 \
--executor-memory 5G \
--driver-memory 2G \
--conf spark.ui.enabled=false