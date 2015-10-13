#!/usr/bin/make -f
all: build
	
.PHONY: build push all
DOCKER_PUSH_CMD :=docker push
DOCKER_BUILD_CMD :=docker build --pull
DOCKER_BUILD_CONTEXT :=../


build-registry.hub.docker.com__seznam__dbuilder~debian_wheezy:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:debian_wheezy.dockerfile -t seznam/dbuilder:debian_wheezy $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~debian_wheezy:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:debian_wheezy

build-registry.hub.docker.com__seznam__dbuilder~debian_7:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:debian_7.dockerfile -t seznam/dbuilder:debian_7 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~debian_7:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:debian_7

build-registry.hub.docker.com__seznam__dbuilder~debian_jessie:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:debian_jessie.dockerfile -t seznam/dbuilder:debian_jessie $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~debian_jessie:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:debian_jessie

build-registry.hub.docker.com__seznam__dbuilder~debian_8:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:debian_8.dockerfile -t seznam/dbuilder:debian_8 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~debian_8:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:debian_8

build-registry.hub.docker.com__seznam__dbuilder~debian_latest:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:debian_latest.dockerfile -t seznam/dbuilder:debian_latest $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~debian_latest:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:debian_latest

build-registry.hub.docker.com__seznam__dbuilder~debian: build-registry.hub.docker.com__seznam__dbuilder~debian_wheezy build-registry.hub.docker.com__seznam__dbuilder~debian_7 build-registry.hub.docker.com__seznam__dbuilder~debian_jessie build-registry.hub.docker.com__seznam__dbuilder~debian_8 build-registry.hub.docker.com__seznam__dbuilder~debian_latest

push-registry.hub.docker.com__seznam__dbuilder~debian: push-registry.hub.docker.com__seznam__dbuilder~debian_wheezy push-registry.hub.docker.com__seznam__dbuilder~debian_7 push-registry.hub.docker.com__seznam__dbuilder~debian_jessie push-registry.hub.docker.com__seznam__dbuilder~debian_8 push-registry.hub.docker.com__seznam__dbuilder~debian_latest

.PHONY: build-registry.hub.docker.com__seznam__dbuilder~debian push-registry.hub.docker.com__seznam__dbuilder~debian

build-registry.hub.docker.com__seznam__dbuilder: build-registry.hub.docker.com__seznam__dbuilder~debian

push-registry.hub.docker.com__seznam__dbuilder: push-registry.hub.docker.com__seznam__dbuilder~debian

.PHONY: build-registry.hub.docker.com__seznam__dbuilder push-registry.hub.docker.com__seznam__dbuilder

build-registry.hub.docker.com__seznam__dbuilder~ubuntu_12.04:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:ubuntu_12.04.dockerfile -t seznam/dbuilder:ubuntu_12.04 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~ubuntu_12.04:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:ubuntu_12.04

build-registry.hub.docker.com__seznam__dbuilder~ubuntu_14.04:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:ubuntu_14.04.dockerfile -t seznam/dbuilder:ubuntu_14.04 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~ubuntu_14.04:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:ubuntu_14.04

build-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.04:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:ubuntu_15.04.dockerfile -t seznam/dbuilder:ubuntu_15.04 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.04:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:ubuntu_15.04

build-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.10:
	$(DOCKER_BUILD_CMD) -f registry.hub.docker.com__seznam__dbuilder:ubuntu_15.10.dockerfile -t seznam/dbuilder:ubuntu_15.10 $(DOCKER_BUILD_CONTEXT)
push-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.10:
	$(DOCKER_PUSH_CMD) seznam/dbuilder:ubuntu_15.10

build-registry.hub.docker.com__seznam__dbuilder~ubuntu: build-registry.hub.docker.com__seznam__dbuilder~ubuntu_12.04 build-registry.hub.docker.com__seznam__dbuilder~ubuntu_14.04 build-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.04 build-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.10

push-registry.hub.docker.com__seznam__dbuilder~ubuntu: push-registry.hub.docker.com__seznam__dbuilder~ubuntu_12.04 push-registry.hub.docker.com__seznam__dbuilder~ubuntu_14.04 push-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.04 push-registry.hub.docker.com__seznam__dbuilder~ubuntu_15.10

.PHONY: build-registry.hub.docker.com__seznam__dbuilder~ubuntu push-registry.hub.docker.com__seznam__dbuilder~ubuntu

build-registry.hub.docker.com__seznam__dbuilder: build-registry.hub.docker.com__seznam__dbuilder~ubuntu

push-registry.hub.docker.com__seznam__dbuilder: push-registry.hub.docker.com__seznam__dbuilder~ubuntu

.PHONY: build-registry.hub.docker.com__seznam__dbuilder push-registry.hub.docker.com__seznam__dbuilder

build: build-registry.hub.docker.com__seznam__dbuilder build-registry.hub.docker.com__seznam__dbuilder

push: push-registry.hub.docker.com__seznam__dbuilder push-registry.hub.docker.com__seznam__dbuilder

