FROM oven/bun:1.3.14-alpine AS base
RUN apk add --no-cache libc6-compat openssl
WORKDIR /app
