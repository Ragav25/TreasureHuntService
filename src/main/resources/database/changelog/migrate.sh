#!/bin/bash

cat <<EOF > liquibase.properties
classpath: /opt/jdbc/postgres-jdbc.jar
driver: org.postgresql.Driver
url: jdbc:postgresql://db:5432/postgres
username: postgres
password: postgres
changeLogFile:changelog.xml
logLevel:info
EOF

liquibase --contexts="dev" update