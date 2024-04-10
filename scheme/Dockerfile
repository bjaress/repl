FROM debian:stable-slim

RUN apt update
RUN apt install --yes guile-3.0

USER www-data

CMD ["guile"]
