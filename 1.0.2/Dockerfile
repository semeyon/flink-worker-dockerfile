FROM semeyon/flink-master:1.0.2
MAINTAINER Semeyon Svetliy <https://github.com/semeyon/flink-worker-dockerfile>

COPY start-flink-taskmanager.sh /data/
RUN chmod +x /data/start-flink-taskmanager.sh

ENTRYPOINT ["/data/start-flink-taskmanager.sh"]
