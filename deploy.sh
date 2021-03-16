#!/bin/bash

npm install
npm run build
cdk --require-approval=never bootstrap
cdk --require-approval=never deploy