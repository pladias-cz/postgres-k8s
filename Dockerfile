FROM ghcr.io/cloudnative-pg/postgresql:17

RUN apt-get update && \
    apt-get install -y postgis postgresql-17-postgis-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*