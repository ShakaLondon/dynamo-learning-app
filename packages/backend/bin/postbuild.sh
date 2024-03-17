#!/bin/bash

yum -y install jq
rm -rf ./.amplify-hosting

# mkdir -p ./.amplify-hosting/compute
mkdir -p ./.amplify-hosting/compute/default

cp -r ./index.js ./.amplify-hosting/compute/default/index.js
cp -r ./services ./.amplify-hosting/compute/default/services
cp -r ./node_modules ./.amplify-hosting/compute/default/node_modules

cp -r public ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json

echo MONGO_URI=$(aws ssm get-parameter --name "/amplify/dxrmrwkfi1p5r/dynamo-learning-app-backend/MONGO_URI" --with-decryption --query "Parameter.Value" --output text)