ARG VERSION=26.0.0

FROM quay.io/keycloak/keycloak:${VERSION} as builder

LABEL vendor="3sky.dev" \
	maintainer="Kuba Wolynko <kuba@3sky.dev>" \
	name="Keyclock for Aurora usage" \
	arch="x86" 

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres
ENV KC_DB_DRIVER=software.amazon.jdbc.Driver

WORKDIR /opt/keycloak
# use ALB on top, self-sign is fine here
RUN keytool -genkeypair \
	-storepass password \
	-storetype PKCS12 \
	-keyalg RSA \
	-keysize 2048 \
	-dname "CN=server" \
	-alias server \
	-ext "SAN:c=DNS:localhost,IP:127.0.0.1" \
	-keystore conf/server.keystore


ADD --chmod=0666 https://github.com/awslabs/aws-advanced-jdbc-wrapper/releases/download/2.4.0/aws-advanced-jdbc-wrapper-2.4.0.jar /opt/keycloak/providers/aws-advanced-jdbc-wrapper.jar
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:${VERSION}
COPY --from=builder /opt/keycloak/ /opt/keycloak/

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
