#!/bin/sh

# Allow run from any user.
export HOME=/tmp
# Link global packages.
ln -sf /srv/node_modules node_modules

exec "$@"
