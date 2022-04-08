#!/bin/bash
branch=`git branch --show-current`
devLayerArn=`aws lambda list-layer-versions --layer-name CoreLayer-dev --max-items 1 | jq '.LayerVersions[0] .LayerVersionArn'`
prodLayerArn=`aws lambda list-layer-versions --layer-name CoreLayer-prod --max-items 1 | jq '.LayerVersions[0] .LayerVersionArn'`

if [ "$branch" == "main" ]
then

  echo "Are you sure you want to deploy to Prod?"
  read ans

  if [ "$ans" == "yes" ]
  then
    sam sync --config-env prod --parameter-overrides CoreLayerArn="$prodLayerArn" --stack-name Renewals-Zip-prod --watch
  else
    echo "Hey, thanks for comin out..."
  fi

elif [ "$branch" == "dev" ]
then
  sam sync --parameter-overrides CoreLayerArn="$devLayerArn" --stack-name Renewals-Zip-dev --watch
fi
