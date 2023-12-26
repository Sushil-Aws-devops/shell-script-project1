#!/bin/bash

##############################################

# Author: Sushil
# Date: 09/12/2023
#
# Version: V1
#
# This Script will report the AWS resources usage.
#####################################################

set -x #debug mode
set -e
set -o pipefail


# AWS S3
# AWS EC2
# AWS Lamda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

# list EC2 Instances
echo "Print list of ec2 instances"
#aws ec2 describe-instances - < show all info >
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions > resourceTracker:q!

# list IAM users
echo "Print list of IAM Users"
aws iam list-users

