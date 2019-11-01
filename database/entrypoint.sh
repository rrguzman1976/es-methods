#!/bin/bash 

# Based on: https://github.com/twright-msft/mssql-node-docker-demo-app

# Enable job control
set -m

# Start SQL Server
/opt/mssql/bin/sqlservr & 

echo Wait for the SQL Server to come up...
sleep 20s

echo Create DB
/opt/mssql-tools/bin/sqlcmd -U sa -P $SA_PASSWORD -d master \
    -i /usr/src/sql/createdb.sql

echo Bring SQL Server to foreground
fg