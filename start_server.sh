#!/usr/bin/env bash
set -e

if [ "$1" = 'dst_server' ]; then
    mkdir -p $DST_DATA_DIR/DoNotStarveTogether
    cd $DST_INSTALLATION_DIR/bin
    exec gosu ./dontstarve_dedicated_server_nullrenderer -port $PORT -persistent_storage_root $DST_DATA_DIR "$@"
fi

exec "$@"