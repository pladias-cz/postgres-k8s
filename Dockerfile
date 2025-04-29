FROM ghcr.io/cloudnative-pg/postgresql:17

USER root

RUN apt-get update && \
    apt-get install -y postgis postgresql-17-postgis-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER 65532:65532