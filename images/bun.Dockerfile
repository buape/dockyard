FROM oven/bun:1.3.0-alpine AS base
RUN apk add --no-cache libc6-compat openssl
WORKDIR /app
