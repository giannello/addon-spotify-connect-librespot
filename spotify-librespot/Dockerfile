ARG BUILD_FROM=hassioaddons/base:8.0.6
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Setup base
# hadolint ignore=DL3003
ARG LIBRESPOT_VERSION=0.1.6
RUN \
    apk add --no-cache cargo pkgconf alsa-lib-dev alsa-plugins-pulse \
    && cargo install --root /usr/local --bin librespot --version ${LIBRESPOT_VERSION} -- librespot \
    && rm -rf /root/.cargo

# Copy root filesystem
COPY rootfs /
