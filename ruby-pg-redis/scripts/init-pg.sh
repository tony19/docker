#!/bin/bash -e

# Initializes PostgreSQL

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo /etc/init.d/postgresql restart
$DIR/wait-for-it.sh 0.0.0.0:5432 -t 30
sudo -u postgres psql -c "CREATE USER ${USER:-`whoami`} WITH SUPERUSER LOGIN;"
