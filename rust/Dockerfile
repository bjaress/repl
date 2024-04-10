FROM docker.io/rust

RUN cargo install irust cargo-expand cargo-show-asm

RUN adduser --system --home /repl repl
USER repl

CMD ["irust"]
