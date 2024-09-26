# AWS Aurora optimized Keycloak build

## General informations

Build based on documentation, which can be found here:

1. [Preparing for Amazon Aurora PostgreSQL](https://www.keycloak.org/server/db#preparing-keycloak-for-amazon-aurora-postgresql)
2. [Running Keycloak in a container](https://www.keycloak.org/server/containers)

Current version of AWS Advanced JDBC wrapper is [2.4.0](https://github.com/aws/aws-advanced-jdbc-wrapper/releases).

## Storage

Images are are hosted on [quay.io](quay.io).

## Pulling

* from Quay.io:

```bash
podman pull quay.io/3sky/keycloak-aurora
```

## Env varaibles

As baseline environment variables I recommend using the following,
as it is 100% working setup, with AWS CDK.

```yaml
KEYCLOAK_ADMIN: 'admin'
KEYCLOAK_ADMIN_PASSWORD: 'admin'
KC_DB_USERNAME: 'keycloak',
KC_DB_PASSWORD: theSecret.secretValueFromJson('password').toString()
KC_HEALTH_ENABLED: 'true'
KC_HOSTNAME_STRICT: 'false'
KC_DB: 'postgres'
KC_DB_URL: 'jdbc:aws-wrapper:postgresql://' + theAurora.clusterEndpoint.hostname + ':5432/keycloak'
```

Additional variables which are in example:

```typescript
theSecret: secretsmanager.Secret;
theAurora: rds.DatabaseCluster 
```

## Disclaimer

It's a hobby project only. Wrapper around official build.
In case of issues, visiting the official project [github](https://github.com/keycloak/keycloak) page,
is probably a better idea. 
