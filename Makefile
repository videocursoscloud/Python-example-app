all: build tag publish
build:
	docker build -t pythonexampleapp .
tag:
	docker tag pythonexampleapp:latest 972777588758.dkr.ecr.eu-west-1.amazonaws.com/pythonexampleapp:latest
publish:
	$(aws ecr get-login --no-include-email --region eu-west-1) && docker push 972777588758.dkr.ecr.eu-west-1.amazonaws.com/pythonexampleapp:latest


