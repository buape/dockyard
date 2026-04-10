FROM oven/bun:1.3.12-alpine AS base
RUN apk add --no-cache libc6-compat openssl
WORKDIR /app
