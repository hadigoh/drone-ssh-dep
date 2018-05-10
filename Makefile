TAG ?= latest

docker:
	docker build -t hadigoh/drone-ssh-dep:$(TAG) .
