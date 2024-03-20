#!/bin/bash

rm -rf ./.amplify-hosting

# mkdir -p ./.amplify-hosting/compute
mkdir -p ./.amplify-hosting/compute/default

cp -r ./src/index.js ./.amplify-hosting/compute/default/src/index.js
cp -r ./services ./.amplify-hosting/compute/default/services
cp -r ./node_modules ./.amplify-hosting/compute/default/node_modules

cp -r public ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
