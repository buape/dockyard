FROM oven/bun:1.4.0-alpine AS base
RUN apk add --no-cache libc6-compat openssl
WORKDIR /app
