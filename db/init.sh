#!/bin/bash
set -e

# Environment variables provided by the MySQL image
DB_USER="${MYSQL_USER:-root}"
DB_PASS="${MYSQL_PASSWORD:-example}"
DB_NAME="${MYSQL_DATABASE:-employees}"

echo "Creating database structure..."
mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < /docker-entrypoint-initdb.d/employees.sql

echo "Loading departments..."
mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < /docker-entrypoint-initdb.d/load_departments.dump

echo "Initialization complete!"
