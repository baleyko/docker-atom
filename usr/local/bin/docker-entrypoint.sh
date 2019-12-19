#!/usr/bin/env sh
set -e

/etc/init.d/xvfb start > /dev/null 2>&1

while [ -z `pgrep Xvfb` ]; do sleep 1; done

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- atom "$@";
fi

exec "$@"
