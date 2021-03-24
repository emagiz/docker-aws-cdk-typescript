#!/bin/bash

echo "Running npm install"
npm install
echo "Running npm build"
npm run build
echo "Running cdk bootstrap"
cdk bootstrap --require-approval=never "$@"
echo "Running cdk deploy"
cdk deploy --require-approval=never "$@"