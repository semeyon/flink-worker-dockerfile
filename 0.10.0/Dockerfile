FROM tobwiens/flink-master:0.10.0
MAINTAINER Tobias Wiens <https://github.com/tobwiens/flink-worker-dockerfile>

COPY start-flink-taskmanager.sh /data/
RUN chmod +x /data/start-flink-taskmanager.sh

ENTRYPOINT ["/data/start-flink-taskmanager.sh"]

