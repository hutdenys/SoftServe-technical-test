#/usr/bin/env bash

set -e

export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION="us-east-1"

USER_NAME="test-task-user"
POLICY_ARN="arn:aws:iam::aws:policy/AdministratorAccess"

aws iam create-user --user-name "$USER_NAME"
aws iam attach-user-policy --user-name "$USER_NAME" --policy-arn "$POLICY_ARN"
aws iam create-access-key --user-name "$USER_NAME" --output "json" > ${USER_NAME}-access-key.json

echo "IAM user $USER_NAME created successfully, check access key in $USER_NAME-access-key.json"
