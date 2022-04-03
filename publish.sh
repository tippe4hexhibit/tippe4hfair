#!/usr/bin/env bash

export AWS_PROFILE="tippe4hfair"
HUGO_ENV="development"

if [ "${1}" = "prod" ]; then
    HUGO_ENV="production"
    echo "Preparing deployment to PRODUCTION..."
    sleep 3
fi

hugo -e ${HUGO_ENV} --gc --minify
hugo -e ${HUGO_ENV} deploy --invalidateCDN --maxDeletes -1

unset AWS_PROFILE

