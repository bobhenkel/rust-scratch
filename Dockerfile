FROM rust:1.41.0-slim-stretch AS build-env

ADD . /app/src
WORKDIR /app/src/
RUN rustup target add x86_64-unknown-linux-musl
RUN cargo build --target x86_64-unknown-linux-musl --release

FROM scratch
COPY --from=build-env /app/src/target/x86_64-unknown-linux-musl/release/hello /
WORKDIR /
CMD ["/hello"]
