#!/bin/bash

# Stop on error
set -e

# Variables
DATA_DIR=/var/lib/pgsql/data

#start postgreSQL
echo "starting postgreSQL ... "

su postgres -c "pg_ctl -D $DATA_DIR -l ${DATA_DIR}/logfile start"

echo "started postgreSQL"

# keep the stdin
/bin/bash

