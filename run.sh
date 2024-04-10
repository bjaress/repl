#! /bin/bash

set -e

language="$1"
dir="$(dirname "$(realpath "$0")")"
iidfile="$(mktemp)"

if [ "$#" -eq 0 ]
then
  find "${dir}" -iname Dockerfile -printf "%P\n"|xargs dirname|sort
  exit
fi

podman build --iidfile "${iidfile}" "${dir}/${language}"
exec podman run -it "$(< "${iidfile}" )"
