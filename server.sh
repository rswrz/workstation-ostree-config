#!/bin/sh
REPO=/srv/ostree/repo
podman run --rm \
	--detach --publish 8000:8000 \
	--volume $REPO:/repo:Z -w /repo \
	python python -m http.server
