# AWS Aurora optimized Keycloak build

## General informations

Build based on documentation, which can be found here:

1. [Preparing for Amazon Aurora PostgreSQL](https://www.keycloak.org/server/db#preparing-keycloak-for-amazon-aurora-postgresql)
2. [Running Keycloak in a container](https://www.keycloak.org/server/containers)

Current version of AWS Advanced JDBC wrapper is [2.3.6](https://github.com/aws/aws-advanced-jdbc-wrapper/releases).

## Env varaibles

As baseline environment variables I recommend using the following:

- KEYCLOAK_ADMIN
- KEYCLOAK_ADMIN_PASSWORD
- KC_DB
- KC_DB_USERNAME
- KC_DB_PASSWORD
- KC_HTTP_ENABLED

## Disclaimer

It's a hobby project only. Wrapper around official build.
In case of issues, visiting the official project [github](https://github.com/keycloak/keycloak) page,
is probably a better idea. 
