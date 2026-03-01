#!/bin/bash

set -x
ENV=${1:-staging}  # Si no se pasa argumento, usa staging por defecto
du -hs * | sort -h
sam deploy --template-file template.yaml --config-env $ENV --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --resolve-s3