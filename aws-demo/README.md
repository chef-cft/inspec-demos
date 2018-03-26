# Example AWS InSpec Profile

This profile contains some example controls for validating IAM Roles, Security Groups, and S3 Buckets in Amazon.

## Prerequisites

- InSpec >= 2.0

## AWS Environment Variables

Before running the profile with InSpec, define environment variables with your AWS region and credentials.  InSpec supports the following standard AWS variables:

- `AWS_REGION`
- `AWS_DEFAULT_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_SESSION_TOKEN` (optional)

Those variables are defined in [AWS CLI Docs](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment) 

## Usage

Update the appropriate file in the `controls/` directory with the names and/or regions you'd like to evaluate. Then, from your terminal, run the following command, substituting `CONTROL_NAME` with the control you'd like to run:

`inspec exec aws-demo/controls/CONTROL_NAME.rb -t aws://`

