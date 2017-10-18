#!/bin/sh

# Allow run from any user.
export HOME=/tmp
# Link global packages.
ln -sf /srv/node_modules frontend/node_modules

exec "$@"
