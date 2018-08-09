all:
	docker build --pull -t sectoid/debian-build-docker:stretch-backports amd64/stretch-backports
	docker build --pull -t sectoid/debian-build-docker:stretch-backports-i386 i386/stretch-backports

push:
	docker push sectoid/debian-build-docker:stretch-backports
	docker push sectoid/debian-build-docker:stretch-backports-i386

.PHONY: all push
