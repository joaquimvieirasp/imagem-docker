FROM rust:latest

WORKDIR /app

COPY Cargo.toml ./

COPY . .

RUN cargo install --locked --path .

CMD ["cargo", "test"]