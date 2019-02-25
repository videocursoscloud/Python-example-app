all: build tag publish
build:
	docker build -t pythonexampleapp .
tag:
	docker tag pythonexampleapp:latest 972777588758.dkr.ecr.eu-west-1.amazonaws.com/pythonexampleapp:latest
publish:
	eval `aws ecr get-login` && docker push 972777588758.dkr.ecr.eu-west-1.amazonaws.com/pythonexampleapp:latest


