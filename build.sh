#!/usr/bin/env bash

set -e

rm -rf docs lib test

docker pull spysystem/openapi-generator
docker run \
	--user $(id -u):$(id -g) \
	--rm -v ${PWD}:/local spysystem/openapi-generator:spy-master generate \
	-i filemaker.yaml \
	-g php \
	-o /local \
	-c /local/config.json

git add docs/*
git add lib/*
git add test/*
