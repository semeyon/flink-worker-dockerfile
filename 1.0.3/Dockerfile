FROM semeyon/flink-master:1.0.3
MAINTAINER Semeyon Svetliy <https://github.com/semeyon/flink-worker-dockerfile>

ADD ./1.0.3/start-flink-taskmanager.sh /data/start-flink-taskmanager.sh
RUN chmod +x /data/start-flink-taskmanager.sh

ENTRYPOINT ["/data/start-flink-taskmanager.sh"]
