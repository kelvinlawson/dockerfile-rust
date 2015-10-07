FROM ubuntu:14.04

# Install pre-requisites
RUN apt-get update && apt-get install -y curl gcc

# Install Rust
RUN curl -sf -L https://static.rust-lang.org/rustup.sh | sh -s -- --yes --disable-sudo

# Clean up
RUN apt-get -y clean

# Cargo expects a $USER variable, create a user "rusty"
RUN useradd -ms /bin/bash rusty
ENV HOME /home/rusty
USER rusty

