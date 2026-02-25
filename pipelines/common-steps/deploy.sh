#!/bin/bash

set -x
du -hs * | sort -h
sam deploy --template-file template.yaml --config-env staging --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --resolve-s3