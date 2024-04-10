FROM docker.io/clojure:lein

RUN adduser --system --home /repl repl
USER repl
RUN mkdir /repl/.lein # fails without this

CMD ["lein", "repl"]
