#!/bin/bash

currDir=`pwd`
params=`aws lambda list-layer-versions --layer-name CoreLayer-dev --max-items 1 | jq '.LayerVersions[0] .LayerVersionArn'`

echo $currDir
echo $params
