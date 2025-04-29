FROM ghcr.io/cloudnative-pg/postgresql:17@sha256:a950d7c3b3571f7f9530e3842c48e4e673104929e3c323225b6f290004f2065c

USER root

RUN apt-get update && \
    apt-get install -y postgis postgresql-17-postgis-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER 65532:65532