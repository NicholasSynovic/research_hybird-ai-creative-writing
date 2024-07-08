# Creative Writing Through Hybrid AI Collaboration

> A research project in collaboration with the LUC Psychology Department.

## Table of Contents

- [Creative Writing Through Hybrid AI Collaboration](#creative-writing-through-hybrid-ai-collaboration)
  - [Table of Contents](#table-of-contents)
  - [About](#about)
  - [Configuring the Environment](#configuring-the-environment)
    - [Environment](#environment)
    - [Install Docker](#install-docker)
    - [Install Ollama](#install-ollama)

## About

This repository contains the files and steps required to setup the technical
aspects of the software suite for this research.

Currently, this research leverages [Ollama](https://github.com/ollama/ollama)
and [Open WebUI](https://github.com/open-webui/open-webui) to provide a local,
controlled AI environment where researchers can monitor, evaltuate, and analyze
user quieries and AI responses.

## Configuring the Environment

We leverage Docker in order to abstract away the hardware platform to use as
well as control for technical variables such as software versions, and
availibility of tools.

### Environment

This environment was tested to work on x86-64 Linux.

### Install Docker

Up to date instructions on how to install the Docker Engine are provided
[here](https://docs.docker.com/engine/install/).

### Install Ollama

Ollama provides an HTTP server and REST API wrapper around the high-performance
[llama.cpp](https://github.com/ggerganov/llama.cpp) inference engine.

How to set up Ollama

1. Follow instructions on https://ollama.com/download/linux
1. Run the command "ollama serve" on ubuntu and navigate to
   http://127.0.0.1:11434/ to verify that Ollama is working

How to set up Open WebUI

1. Run the command "docker run -d -p 3000:8080
   --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data
   --name open-webui --restart always ghcr.io/open-webui/open-webui:main" in
   Windows PowerShell
