FROM rust:bookworm as builder

WORKDIR /usr/src/rustdesk-server
COPY . .

# Install build dependencies if needed (though rust image has most)
# hbbs uses sqlite, but usually sqlx bundles or uses pure rust if configured, 
# but checking Cargo.toml, it uses sqlite. 
# We'll rely on cargo to handle dependencies.
RUN apt-get update && apt-get install -y libsqlite3-dev pkg-config libssl-dev protobuf-compiler libsodium-dev clang cmake && rm -rf /var/lib/apt/lists/*

RUN cargo install --path . --locked --bin hbbs --bin hbbr

FROM debian:bookworm-slim
WORKDIR /root

# Install runtime dependencies if necessary (e.g. ca-certificates for TLS)
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/cargo/bin/hbbs /usr/local/bin/hbbs
COPY --from=builder /usr/local/cargo/bin/hbbr /usr/local/bin/hbbr

VOLUME /root

# Default command can be overridden
CMD ["hbbs"]
