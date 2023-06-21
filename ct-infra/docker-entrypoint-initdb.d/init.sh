#!/usr/bin/env sh
apk add postgresql15-client
while ! nc -z db 5432; do
    sleep 0.1
done
echo "PostgreSQL connection found, executing TimeScaleDB schema setup"
export PGPASSWORD=${POSTGRES_PASSWORD}
if [ "$( psql -h db -U postgres -XtAc "SELECT 1 FROM pg_database WHERE datname='${DATABASE_NAME}'" )" != '1' ]
then
    echo "Databse ${DATABASE_NAME} does not exist, importing schema"
    psql -h db -U postgres -c "CREATE DATABASE ${DATABASE_NAME};"
    psql -h db -U postgres -d ${DATABASE_NAME} -f /docker-entrypoint-initdb.d/schema.sql
    psql -h db -U postgres -d ${DATABASE_NAME} -f /docker-entrypoint-initdb.d/import.sql
else
    echo "Database ${DATABASE_NAME} already exists, nothing to do"
fi
exit