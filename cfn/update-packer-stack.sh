#!/bin/bash
aws cloudformation update-stack --stack-name packer --template-body "$(cat packer.json)" --capabilities CAPABILITY_IAM
