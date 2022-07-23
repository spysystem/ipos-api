#!/usr/bin/env bash
set -e

rm -rf .openapi-generator docs lib test > /dev/null 2>&1

docker pull spysystem/openapi-generator:spy_branch

docker run \
    --user $(id -u):$(id -g) \
    --rm \
    -v ${PWD}:/local \
    spysystem/openapi-generator:spy_branch \
    generate \
    --generator-name php \
    --config /local/config.yaml \
    --input-spec /local/filemaker.yaml \
    --output /local

git add . > /dev/null 2>&1
