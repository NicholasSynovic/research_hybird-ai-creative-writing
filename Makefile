build:
	docker compose --file docker/docker-compose.yaml create --build
	docker compose --file docker/docker-compose.yaml start

create-dev:
	pre-commit install
