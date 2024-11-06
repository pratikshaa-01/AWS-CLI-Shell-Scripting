#!/bin/bash

#############
# Author: Pratiksha
# Date: 06-11-24
#
# Version: v1
#
# This script will report the AWS resource usage
#############

set -x

# Output file
OUTPUT_FILE="resourcetracker"

# Clear output file at the beginning of the script
> "$OUTPUT_FILE"

# AWS S3
echo "Listing S3 Buckets..." >> "$OUTPUT_FILE"
aws s3 ls >> "$OUTPUT_FILE"

# AWS EC2
echo -e "\nListing EC2 Instances..." >> "$OUTPUT_FILE"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId' >> "$OUTPUT_FILE"

# AWS Lambda
echo -e "\nListing Lambda Functions..." >> "$OUTPUT_FILE"
aws lambda list-functions | jq -r '.Functions[].FunctionName' >> "$OUTPUT_FILE"

# AWS IAM Users
echo -e "\nListing IAM Users..." >> "$OUTPUT_FILE"
aws iam list-users | jq -r '.Users[].UserName' >> "$OUTPUT_FILE"

echo "Resource usage report saved to $OUTPUT_FILE"
