# AWS Resource Usage Reporter

This script generates a report of the following AWS resources:
- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users

The script uses AWS CLI commands to fetch the resource data and stores it in a file called `resourcetracker`.

## Requirements
- **AWS CLI**: Ensure AWS CLI is installed and configured with the necessary IAM permissions to access the resources.
- **jq**: A lightweight and flexible command-line JSON processor.

## Setup
1. Clone this repository or download the script.
2. Ensure you have the AWS CLI and jq installed on your system.

   - To install AWS CLI: [AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
   - To install jq: [jq Installation](https://stedolan.github.io/jq/download/)

3. Configure your AWS CLI with the appropriate credentials and region using the following command:
   ```bash
   aws configure
4. Make the script executable: If you haven't already, make the script file executable by running:
    ```bash
   chmod +x aws_resource_report.sh
5. Run the script: Execute the script to fetch the AWS resources:
    ```bash
    ./aws_resource_report.sh

