FROM ubuntu:14.04

# Install pre-requisites
RUN apt-get update && apt-get install -y curl

# Install Rust
RUN curl -sf -L https://static.rust-lang.org/rustup.sh | sh -s -- --yes --disable-sudo

# Clean up
RUN apt-get -y clean