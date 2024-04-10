#! /bin/bash

set -ex

language="$1"
dir="$(dirname "$(realpath "$0")")"
iidfile="$(mktemp)"

podman build --iidfile "${iidfile}" "${dir}/${language}"
exec podman run -it "$(< "${iidfile}" )"
