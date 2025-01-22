build:
	docker build --file docker/Ollama.dockerfile --tag hawc_ollama docker
	docker build --file docker/OpenWebUI.dockerfile --tag hawc_owu docker
	docker run -d --gpus=all -p 11434:11434 -v ollama:/root/.ollama --restart always --name hawc_ollama_container hawc_ollama
	docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --restart always --name hawc_owu_container hawc_owu
	docker exec -it hawc_ollama_container ollama pull qwen2:0.5b

create-dev:
	pre-commit install
