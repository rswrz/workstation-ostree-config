#!/bin/sh
set -eu
CACHE=/srv/ostree/cache
REPO=/srv/ostree/repo

mkdir -p $CACHE

if [ ! -d $REPO/objects ]; then
    ostree --repo=$REPO init --mode=archive-z2
fi

rpm-ostree compose tree --cachedir=$CACHE --repo=$REPO $1
