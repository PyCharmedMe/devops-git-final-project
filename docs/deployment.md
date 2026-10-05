# Deployment Guide

## Pre-Deployment Checks

1. Confirm the repository working tree is clean.
2. Confirm the correct branch is checked out.
3. Review the application configuration.
4. Review monitoring and logging settings.
5. Verify operational scripts are available.

## Deployment Validation

After deployment:

- Verify the application configuration.
- Verify monitoring settings.
- Verify logging settings.
- Run the health-check script.

## Post-Deployment Verification

After the service is running:

1. Confirm the application is using the expected production environment.
2. Confirm the configured application port is available.
3. Confirm health checks are enabled.
4. Review monitoring configuration.
5. Verify no unexpected errors appear in application logs.

Any unexpected production behavior should be investigated against
the repository history before additional configuration changes are made.