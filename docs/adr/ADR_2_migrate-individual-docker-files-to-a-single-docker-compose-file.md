# 2. Migrate individual docker files to a single docker compose file

## Context

This project leverages several Docker images that interact with one another.
Currently, Docker deploys are handled by a `make build` with Docker run commands
and individual Dockerfiles per image. This can make maintence difficult as
changing one Dockerfile can produce maintaibility side effects (e.g., modyfing
content in one image affects the usage of another file).

Since we are leveraging static images at specific releases, using Dockerfiles is
redundent. A better solution would be to leverage a Docker compose file and
define all of the images and the container parameters for each image. This way
we can version both the Docker image release and the parameters for each
container while also auditing security in a single file.

## Decision

We will migrate the existing Dockerfiles to a single Docker compose file. The
`make build` will be updated to leverage Docker compose.

## Consequences

Docker compose has limitations regarding instancing custom images. If we need a
custom image, we will still need to rely on Dockerfiles to do so.
