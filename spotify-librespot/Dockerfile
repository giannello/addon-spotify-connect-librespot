ARG BUILD_FROM=hassioaddons/base-amd64:8.0.3
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Setup base
# hadolint ignore=DL3003
RUN \
    apk add --no-cache git cargo \
        pkgconf alsa-lib-dev \
    \
    && git clone --branch "v0.1.3" --depth=1 \
        https://github.com/librespot-org/librespot.git /tmp/librespot \
    \
    && cd /tmp/librespot \
    && cargo build --release \
    && mv /tmp/librespot/target/release/librespot /usr/local/bin \
    \
    && rm -rf /tmp/librespot /root/.cargo

# Copy root filesystem
COPY rootfs /
