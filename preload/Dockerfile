ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.17
FROM ${BUILD_FROM}

# Add bash and cron support if needed
RUN apk add --no-cache bash

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
