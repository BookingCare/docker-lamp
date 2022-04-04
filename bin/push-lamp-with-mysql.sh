#!/usr/bin/env bash

cd "$(dirname "$0")"
cd ..

VERSION=1.1.0
docker build -f Dockerfile-with-mysql -t lamp-with-mysql:"$VERSION" .
docker tag lamp-with-mysql:"$VERSION" registry.gitlab.com/bookingcare/bookingcare-2016/lamp-with-mysql:"$VERSION"
docker push registry.gitlab.com/bookingcare/bookingcare-2016/lamp-with-mysql:"$VERSION"

docker image prune -f