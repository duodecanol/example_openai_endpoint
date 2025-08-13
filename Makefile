include .env

build:
	docker login -u ${DOCKER_HUB_NAME} -p ${DOCKER_HUB_TOKEN}
	docker build -t ${DOCKER_HUB_NAME}/fake-llm:latest .
	docker push ${DOCKER_HUB_NAME}/fake-llm:latest