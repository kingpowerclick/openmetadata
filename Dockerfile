FROM openjdk:20-slim

EXPOSE 8585

RUN apt-get update && apt-get install -y wget

COPY openmetadata-start.sh openmetadata.yaml ./
RUN wget https://github.com/open-metadata/OpenMetadata/releases/download/0.12.0-release/openmetadata-0.12.0.tar.gz && \
    tar zxvf openmetadata-*.tar.gz && \
    rm openmetadata-*.tar.gz
RUN chmod 777 openmetadata-start.sh
CMD ["./openmetadata-start.sh"]

