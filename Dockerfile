# syntax=docker/dockerfile:1
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

ARG PUID=2000
ARG PGID=2000

RUN \
    groupadd \
      --gid "${PGID}" servicedesk && \
    useradd \
      --gid "${PGID}" \
      --uid "${PUID}" \
      --comment "" \
      --shell /bin/bash \
      servicedesk

RUN \
    apt-get update && \
    apt-get install --yes \
      wget \
      unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/manageengine && chmod 0755 /opt/manageengine && chown servicedesk:servicedesk /opt/manageengine

COPY --chown=servicedesk:servicedesk ManageEngine_ServiceDesk_Plus.bin installer.properties.sh entrypoint.sh /opt/manageengine/

RUN chmod +x /opt/manageengine/entrypoint.sh

WORKDIR /home/servicedesk

USER servicedesk

EXPOSE 8080 8443

ENTRYPOINT ["/opt/manageengine/entrypoint.sh"]
