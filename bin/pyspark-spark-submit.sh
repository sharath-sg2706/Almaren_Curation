spark-submit --master yarn nabu-poc-curation/code/curation.py \
--packages "com.github.music-of-the-ainur:almaren-framework_2.11:0.9.0-2.4" \
--executor-cores 1 \
--num-executors 2 \
--executor-memory 5G \
--driver-memory 2G \
--conf spark.ui.enabled=false