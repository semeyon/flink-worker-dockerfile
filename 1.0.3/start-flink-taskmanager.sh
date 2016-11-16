#!/usr/bin/env bash
set -x
#Replace the FLINK_MASTER_PROPERTY=jobmanager.rpc.address with FLINK_MASTER_IP(default=127.0.0.1)
cat $FLINK_DIRECTORY/conf/flink-conf.yaml \
| yaml-change $FLINK_MASTER_PROPERTY $FLINK_MASTER_HOST > $FLINK_DIRECTORY/conf/flink-conf-new.yaml && \
/bin/cp $FLINK_DIRECTORY/conf/flink-conf-new.yaml $FLINK_DIRECTORY/conf/flink-conf.yaml && \
rm $FLINK_DIRECTORY/conf/flink-conf-new.yaml

#Increase akka.framesize parameter to run jobs using flink cli
echo $AKKA_FRAMESIZE: $AKKA_FRAMESIZE_VAl >> $FLINK_DIRECTORY/conf/flink-conf.yaml

#Set flink master address
truncate -s 0 $FLINK_DIRECTORY/conf/masters
echo $FLINK_MASTER_HOST >> $FLINK_DIRECTORY/conf/masters

# Start the flink task manager (slave)
$FLINK_DIRECTORY/bin/taskmanager.sh start

# Don't stop the container
sleep infinity
