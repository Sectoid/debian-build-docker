all:
	docker build --pull -t sectoid/debian-build-docker:stretch-backports -f amd64/stretch-backports/Dockerfile .
	docker build --pull -t sectoid/debian-build-docker:stretch-backports-i386 -f i386/stretch-backports/Dockerfile .

push:
	docker push sectoid/debian-build-docker:stretch-backports
	docker push sectoid/debian-build-docker:stretch-backports-i386

.PHONY: all push
