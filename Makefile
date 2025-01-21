build:
	docker build --file docker/Ollama.dockerfile --tag hawc_ollama docker
	docker build --file docker/OpenWebUI.dockerfile --tag hawc_owu docker

create-dev:
	pre-commit install
