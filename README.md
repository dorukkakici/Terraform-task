
# Terraform Lambda Deployment with AWS

This project uses Terraform to create and manage AWS resources for deploying a Lambda function, an IAM role, and a CloudWatch Event Rule for scheduled execution. The Lambda function will be triggered every 5 minutes by a cron job, and both the Lambda code and the Terraform state will be stored in an S3 bucket.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Outputs](#outputs)
- [Notes](#notes)
- [Contributing](#contributing)
- [License](#license)


## Prerequisites

Before you begin, make sure you have the following:

- **AWS Account**: You need access to an AWS account to deploy the infrastructure.
- **Terraform (v0.15.5 or higher)**: Follow the installation guide [here](https://www.terraform.io/downloads.html).
- **AWS CLI**: Ensure that the AWS CLI is configured with the necessary credentials.




## Setup

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone git@github.com:dorukkakici/Terraform-task.git
cd terraform-lambda
```

### 2. Configure AWS CLI

If you haven't configured the AWS CLI yet, run the following command and provide your credentials:

```bash
aws configure
```


## You’ll need to input the following:

- **AWS Access Key ID**
- **AWS Secret Key ID**
- **Default Region Name ID**
- **Default Output Format ID**

### 3. Install Terraform

If Terraform is not installed on your system, download it from the official Terraform website and follow the installation instructions.

### Usage

### 1.Initialize Terraform

Run the following command to initialize the Terraform working directory. This will download the necessary provider plugins:

```bash
terraform init
```
### 2.Review the Plan

To see what changes Terraform will make in your AWS environment, run:

```bash
terraform plan
```
This step allows you to review the proposed changes before applying them.

### 3.Apply the Changes

```bash
terraform apply
```
Terraform will prompt for confirmation before applying the changes. Type yes to proceed.


### Outputs

After applying the configuration, you can view any defined outputs by running:

```bash
terraform output
```
Currently, there are no outputs defined in the configuration, but you can add outputs in the Terraform files as needed to capture resource details.

### Notes

This configuration creates the following AWS resources:
  - **AWS Lambda function that performs the task you define.**
  - **IAM Role (LambdaExecutionRole) with necessary permissions for Lambda to execute.**
  - **CloudWatch Event Rule that triggers the Lambda function on a schedule (cron expression).**
    
Ensure that your Lambda function code (lambda_function.zip) is available in the specified path when deploying

The Lambda function is triggered by the CloudWatch Event Rule periodically according to the cron expression defined in the Terraform files.


### Contributing

We welcome contributions to this project! To contribute:

- *Fork the repository.*
- *Create a new branch (git checkout -b feature-name).*
- *Commit your changes (git commit -am 'Add new feature').*
- *Push to the branch (git push origin feature-name).*
- *Create a pull request to the main branch.*

### License

This project is licensed under the MIT License. See the LICENSE file for details.





