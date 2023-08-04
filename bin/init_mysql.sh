#!/bin/bash

cd "$(dirname "$0")"

# down localenv
docker-compose down --rmi local -v

## volume init.
rm -rf $HOME/one/mysql

## build
./build.sh

## start mysql
./run.sha