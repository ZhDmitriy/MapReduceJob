export MR_OUTPUT=/user/root/output-data

hadoop fs –rm –r $MR_OUTPUT

hadoop jar "$HADOOP_MAPRED_HOME"/hadoop-streaming.jar \
-Dmapred.job.name='Simple streaming job reduce' \
-file /tmp/mapreduce/mapper.py –mapper /tmp/mapreduce/mapper.py \
-file /tmp/mapreduce/reducer.py –reducer /tmp/mapreduce/reducer.py \
-input /user/root/input-data –output $MR_OUTPUT