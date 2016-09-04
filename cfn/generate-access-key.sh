#!/bin/bash
aws cloudformation describe-stack-resource --stack-name packer --logical-resource-id user | jq -M .StackResourceDetail.PhysicalResourceId | xargs aws iam create-access-key --user-name
