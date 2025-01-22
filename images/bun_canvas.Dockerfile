FROM oven/bun:1.2-alpine AS base
RUN apk add --no-cache libc6-compat build-base g++ cairo-dev pango-dev jpeg-dev imagemagick openssl
RUN bun i -g node-gyp
WORKDIR /app
