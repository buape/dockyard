FROM lucaslorentz/caddy-docker-proxy:2.13.1-alpine@sha256:3e6cf4a6382da0cd14108a69929d7f8cc59e9a59cae4c9795071fa392ffa8036

# Refresh the system trust store after the eMudhra intermediate CA compromise.
# Keep the upstream caddy-docker-proxy entrypoint, command, and plugins intact.
RUN apk add --no-cache 'ca-certificates>=20261020-r0' \
    && apk upgrade --no-cache ca-certificates-bundle \
    && update-ca-certificates
