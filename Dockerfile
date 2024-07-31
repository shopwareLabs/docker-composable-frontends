FROM node:20-slim

ENV NODE_ENV development
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
RUN apt-get update && apt-get install -y curl && apt-get clean

COPY ./src /app
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /app

EXPOSE 3000
ENTRYPOINT ["/entrypoint.sh"]