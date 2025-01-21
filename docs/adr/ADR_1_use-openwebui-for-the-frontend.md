# 1. Use OpenWebUI for the frontend

## Context

Non-technical users need to be able to interface with an LLM hosted by Ollama.
Several different frontends for Ollama exists, including one provided by Ollama.
However, OpenWebUI is a fairly customizable, robust alternative to the Ollama
provided web UI. It is also the frontend that we as a team are most comfortable
with at the moment.

## Decision

Similar to the previous ADR, we will create an `OpenWebUI.dockerfile`.

## Consequences

We may have to customize OpenWebUI to suit our needs later on. We will also have
to config OpenWebUI to interface with Ollama.
