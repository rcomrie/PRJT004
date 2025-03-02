# Project Title: AWS Infrastructure Automation with Terraform

## Project Overview
This project leverages Terraform to automate the provisioning of AWS infrastructure, ensuring a scalable, secure, and repeatable environment. 
The deployment includes a custom Virtual Private Cloud (VPC), a security group with defined ingress rules, and an EC2 instance optimized for application hosting.

## Infrastructure Components

### Virtual Private Cloud (VPC) – A custom VPC with a designated CIDR block for network segmentation.
Security Group – Configured to allow inbound traffic over HTTP (80), HTTPS (443), and SSH (22), ensuring secure remote access and web traffic handling.

### EC2 Instance – A provisioned Amazon Linux 2 instance, suitable for deploying and running applications efficiently.
Terraform Implementation

Terraform configurations are structured to follow Infrastructure as Code (IaC) best practices, enabling version-controlled, modular, and reusable deployments across AWS environments.

Before starting, ensure you have the following:

An AWS account with appropriate permissions (IAM user with EC2, VPC, and Security Group management access).
Terraform installed on your local machine. 

Create a new directory for the Terraform project:
Inside the directory, create a Terraform configuration file
Open EC2.tf and configure the AWS provider

![Screenshot 2025-03-01 120734](https://github.com/user-attachments/assets/a150a0d0-dfb0-4e25-bbc7-b8120cae792c)

### Create a Custom VPC
Define a Virtual Private Cloud (VPC) with a specific CIDR block:

![Screenshot 2025-03-01 122009](https://github.com/user-attachments/assets/93c41904-b292-4cd8-ac26-a3138718421b)

![Screenshot 2025-03-01 121756](https://github.com/user-attachments/assets/0851a8e5-b3f1-4af4-a580-becd51a57e65)

![Screenshot 2025-03-01 122253](https://github.com/user-attachments/assets/0c3d6bd0-1708-425d-b3e7-4703ad726286)

### Create a Security Group
Set up a security group allowing HTTP, HTTPS, and SSH traffic

![Screenshot 2025-03-01 122904](https://github.com/user-attachments/assets/70079353-033e-4ebe-8348-ef6a5dfda261)

![Screenshot 2025-03-01 123302](https://github.com/user-attachments/assets/91608a85-7aea-4114-9138-1bb2daba003c)

### Provision an EC2 Instance
Deploy an Amazon Linux 2 EC2 instance within the VPC and associate it with the security group:

![Screenshot 2025-03-01 121114](https://github.com/user-attachments/assets/1b863b0b-a0f8-44ed-b6cb-efd62105186d)

![Screenshot 2025-03-01 120734](https://github.com/user-attachments/assets/be07aa06-e6ec-4009-89c5-fba46cdc921c)

![Screenshot 2025-03-01 121756](https://github.com/user-attachments/assets/2dcb1f35-e528-4d3f-937f-b9c3ee074bee)

Initialize Terraform:
terraform init

Validate the configuration:
terraform validate

Preview the execution plan:
terraform plan

Deploy the infrastructure:
terraform apply 

![Screenshot 2025-03-01 121157](https://github.com/user-attachments/assets/581a9321-6991-45f8-be4e-89e4e1c27f96)

This process ensures a fully automated, reproducible AWS infrastructure setup with Terraform.







