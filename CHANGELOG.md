# Changelog

All notable changes to this project will be documented in this file.

## [25.0.4] - 2023-08-19

### Enhancements

[#31963](https://github.com/keycloak/keycloak/issues/31963) Upgrade to Infinispan 15.0.7.Final

### Bugs

[#31299](https://github.com/keycloak/keycloak/issues/31299) NPM library of account-ui is unusable (@keycloak/keycloak-account-ui version 25.0.1) account/ui
[#31304](https://github.com/keycloak/keycloak/issues/31304) Hide save / update buttons in account console for READ_ONLY federated accounts account/ui
[#31340](https://github.com/keycloak/keycloak/issues/31340) Hidden options shown in help all dist/quarkus
[#31386](https://github.com/keycloak/keycloak/issues/31386) Joining group for user doesn't list correct number of groups admin/ui
[#31466](https://github.com/keycloak/keycloak/issues/31466) Duplicate Key "validatingX509CertsHelp" in admin-ui messages admin/ui
[#31519](https://github.com/keycloak/keycloak/issues/31519) Admin API extremely slow with service account and fine-grained authorization `view-users` admin/fine-grained-permissions
[#31545](https://github.com/keycloak/keycloak/issues/31545) Event tables have broken aria-labels admin/ui
[#31558](https://github.com/keycloak/keycloak/issues/31558) MSSQL test container can't start ci
[#31598](https://github.com/keycloak/keycloak/issues/31598) CURL commands in build don't check the response code ci
[#31633](https://github.com/keycloak/keycloak/issues/31633) localization not work with user attribute display name in users add admin/ui
[#31687](https://github.com/keycloak/keycloak/issues/31687) "Use metadata descriptor URL" switch is always set to "On" admin/ui
[#31718](https://github.com/keycloak/keycloak/issues/31718) Documentation for `Delete Credential` action and related changes authentication
[#31781](https://github.com/keycloak/keycloak/issues/31781) Keycloak 25 SAML IdP has made Single Logout URL mandatory. saml
[#31835](https://github.com/keycloak/keycloak/issues/31835) Windows builds fail too often due to problems with the download of Node ci
[#31918](https://github.com/keycloak/keycloak/issues/31918) Network error attempting to view events without permissions admin/ui
[#31929](https://github.com/keycloak/keycloak/issues/31929) Network error attempting to view user registeration without permissions admin/ui
[#32059](https://github.com/keycloak/keycloak/issues/32059) Look around window cannot be set to 0 admin/ui
[#32127](https://github.com/keycloak/keycloak/issues/32127) Offline session bug on 25.0.2 core
[#32150](https://github.com/keycloak/keycloak/issues/32150) Session list doesn't handle non-existing client gracefully core
[#32178](https://github.com/keycloak/keycloak/issues/32178) Table names for persistent sessions upgrading guide is wrong docs
[#32180](https://github.com/keycloak/keycloak/issues/32180) Session list not appearing: SQL Error "The incoming request has too many parameters"
[#32195](https://github.com/keycloak/keycloak/issues/32195) Migration to persistent sessions fails from Keycloak version <22 storage

## [25.0.3] - 2019-08-19

Broken release process, required going immediately to .4 to fix it.
