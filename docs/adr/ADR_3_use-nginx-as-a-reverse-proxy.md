# 3. Use NGINX as a reverse proxy

## Context

We need a way to provide HTTPs and reverse proxy support for our OpenWeb UI
instance. NGINX can provide both of these functionalities.

## Decision

We will add NGINX to our Docker Compose file.

## Consequences

We will have to ensure that NGINX secrets are configured and stored safely
outside the GitHub repo prior to deployment.
