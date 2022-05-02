#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER codebox_user with encrypted password 'QWEqwe123';
	CREATE DATABASE codebox_dev WITH ENCODING 'UTF8';
	GRANT ALL PRIVILEGES ON DATABASE codebox_dev TO codebox_user;
EOSQL
