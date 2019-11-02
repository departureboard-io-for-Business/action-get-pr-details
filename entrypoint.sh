#!/bin/sh -l

PRURL=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.html_url')
PRID=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.number')
PRCREATOR=$(cat ${GITHUB_EVENT_PATH} | jq -r '.pull_request.user.id')

echo ::set-output name=prurl::$PRURL
echo ::set-output name=prid::$PRID
echo ::set-output name=prcreator::$PRCREATOR