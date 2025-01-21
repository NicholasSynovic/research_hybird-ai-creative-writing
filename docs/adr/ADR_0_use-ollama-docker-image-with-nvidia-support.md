# 0. Use Ollama Docker image with NVIDIA support

## Context

Ollama is a DL inference engine and model registry that makes consuming DL
models easy thanks to a simple HTTP REST API. To install Ollama on a system, you
can either use a system binary or a Docker container. As we need this system to
be deployable anywhere, we will use the Docker container version of the
application.

For GPU acceleration, we will support the NVIDIA GPUs.

## Decision

We will create an `Ollama.dockerfile` file that utilizes the Ollama Docker image
with NVIDIA container toolkit container support. We will document in the
`README.md` file how to install the NVIDIA toolkit container support.

## Consequences

This project will have to be installed on devices with a NVIDIA GPU availible
and have Docker installed.
