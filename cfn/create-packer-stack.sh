#!/bin/bash
aws cloudformation create-stack --stack-name packer --template-body "$(cat packer.json)" --capabilities CAPABILITY_IAM
