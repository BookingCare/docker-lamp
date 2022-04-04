#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

VERSION=1.2.0
docker build -f Dockerfile-without-mysql -t lamp-without-mysql:"$VERSION" .
docker tag lamp-without-mysql:"$VERSION" registry.gitlab.com/bookingcare/bookingcare-2016/lamp-without-mysql:"$VERSION"
docker push registry.gitlab.com/bookingcare/bookingcare-2016/lamp-without-mysql:"$VERSION"

docker image prune -f