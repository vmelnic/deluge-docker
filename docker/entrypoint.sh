#!/bin/bash

/usr/bin/deluged -d &
/usr/bin/deluge-web &

exec "$@"
