FROM tobwiens/flink-master
MAINTAINER Tobias Wiens <tobwiens@gmail.com>

# Cheap hack variables - replacement in jobmanager.sh (remove the & to not run in the background)

ENV FLINK_TASKMANAGER_SCRIPT_TO_REPLACE 2>&1 < /dev/null &
ENV FLINK_TASKMANAGER_SCRIPT_REPLACE_WITH 2>&1 < /dev/null

RUN ["/bin/bash", "-c", "cat $FLINK_DIRECTORY/bin/taskmanager.sh | replace-string \"$FLINK_TASKMANAGER_SCRIPT_TO_REPLACE\" \"$FLINK_TASKMANAGER_SCRIPT_REPLACE_WITH\" > $FLINK_DIRECTORY/bin/taskmanager-blocking.sh && \
chmod +x $FLINK_DIRECTORY/bin/taskmanager-blocking.sh"]


CMD ["/bin/bash", "-c", "sleep 10s && $FLINK_DIRECTORY/bin/taskmanager-blocking.sh start"]

