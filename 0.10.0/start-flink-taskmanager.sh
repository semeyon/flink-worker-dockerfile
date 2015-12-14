#!/usr/bin/env bash
set -x
#Replace the FLINK_MASTER_PROPERTY=jobmanager.rpc.address with FLINK_MASTER_IP(default=127.0.0.1)
cat $FLINK_DIRECTORY/conf/flink-conf.yaml \
| yaml-change $FLINK_MASTER_PROPERTY $FLINK_MASTER_IP > $FLINK_DIRECTORY/conf/flink-conf-new.yaml && \
/bin/cp $FLINK_DIRECTORY/conf/flink-conf-new.yaml $FLINK_DIRECTORY/conf/flink-conf.yaml && \
rm $FLINK_DIRECTORY/conf/flink-conf-new.yaml

# Start the flink task manager (slave)
$FLINK_DIRECTORY/bin/taskmanager.sh start

# Don't stop the container
sleep infinity