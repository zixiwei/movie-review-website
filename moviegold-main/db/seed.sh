#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $BASH_SOURCE)

USERNAME=${MONGO_USERNAME:-$MONGO_INITDB_ROOT_USERNAME}
PASSWORD=${MONGO_PASSWORD:-$MONGO_INITDB_ROOT_PASSWORD}
HOST=${MONGO_HOST:-localhost}
DATABASE=${MONGO_DATABASE:-$MONGO_INITDB_DATABASE}

# Seed the database
mongoimport --uri mongodb://${USERNAME}:${PASSWORD}@${HOST} --authenticationDatabase admin --db ${DATABASE} --collection movies --file=${SCRIPT_DIR}/movies.json --jsonArray --drop
