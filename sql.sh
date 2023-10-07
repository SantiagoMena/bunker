#!/bin/bash

echo "Dump..."
mysql --host=db --user=root --port=3306 -psecret bunker < /app/dump_new_developers.sql
