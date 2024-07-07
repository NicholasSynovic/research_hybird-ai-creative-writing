# research_hybird-ai-creative-writing

How to set up Docker

1. Follow instructions on https://docs.docker.com/desktop/wsl/#turn-on-docker-desktop-wsl-2

How to set up Ollama

1. Follow instructions on https://ollama.com/download/linux
1. Run the command "ollama serve" on ubuntu and navigate to http://127.0.0.1:11434/ to verify that Ollama is working

How to set up Open WebUI

1. Run the command "docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main" in Windows PowerShell
