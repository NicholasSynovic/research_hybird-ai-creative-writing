build:
	docker compose --file docker/docker-compose.yaml create --build
	docker compose --file docker/docker-compose.yaml start
	docker compose --file docker/docker-compose.yaml exec ollama ollama pull llama3.2:3b

create-dev:
	pre-commit install
