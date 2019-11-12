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

sleep 10s
echo Create test data
/opt/mssql-tools/bin/bcp DS9.landgrid.State IN State.bcp \
    -n -S localhost -U sa -P $SA_PASSWORD

/opt/mssql-tools/bin/bcp DS9.landgrid.County IN County.bcp \
    -n -S localhost -U sa -P $SA_PASSWORD

/opt/mssql-tools/bin/bcp DS9.landgrid.PlssTownship IN PlssTownship.bcp \
    -n -S localhost -U sa -P $SA_PASSWORD

/opt/mssql-tools/bin/bcp DS9.landgrid.PlssSection IN PlssSection-Small.bcp \
    -n -S localhost -U sa -P $SA_PASSWORD

echo Bring SQL Server to foreground
fg