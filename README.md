# terraform-nginx-ecs

Provision an NGINX web server on AWS ECS using Terraform.
![Nginx ECS  EC2](https://github.com/user-attachments/assets/a9b0efcf-eeb9-42da-937d-c68d20509120)

## Overview

This repository contains Terraform configurations to deploy an NGINX container on Amazon ECS (Elastic Container Service). It automates the creation of ECS resources, networking, and supporting infrastructure to run a scalable and highly-available NGINX service.

## Features

- Provision ECS Cluster and Service
- Deploy NGINX container on ECS Fargate
- Create supporting AWS resources (VPC, subnets, security groups, IAM roles, etc.)
- Configurable parameters via Terraform variables
- Integration with Application Load Balancer (optional)
- Easy customization for your workloads

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- AWS Account and credentials with permissions for ECS, EC2, IAM, VPC, and related resources
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) (optional, for local testing)

## Usage

1. **Clone the repository:**
   ```sh
   git clone https://github.com/muralikrishna-sunkara/terraform-nginx-ecs.git
   cd terraform-nginx-ecs
   ```

2. **Configure variables:**
   - Edit `terraform.tfvars` or override variables as needed.

3. **Initialize Terraform:**
   ```sh
   terraform init
   ```

4. **Plan the deployment:**
   ```sh
   terraform plan
   ```

5. **Apply the configuration:**
   ```sh
   terraform apply
   ```
   - Confirm the action when prompted.

6. **Access NGINX:**
   - Find the load balancer DNS name or ECS service endpoint in Terraform outputs.

## Variables

See [variables.tf](./variables.tf) for configurable options such as:

- `region` - AWS region to deploy resources
- `cluster_name` - Name of ECS cluster
- `container_image` - Docker image for NGINX (default: `nginx:latest`)
- `desired_count` - Number of NGINX tasks
- ...and more

## Outputs

Useful information is output after deployment, including:

- ECS cluster/service names
- Load balancer DNS name (if created)
- VPC/subnet IDs

## Clean Up

To destroy all resources created by this configuration:
```sh
terraform destroy
```

## Customization

You can customize the NGINX configuration by modifying the container image and task definition within the Terraform files.

## License

This project is licensed under the MIT License.

---

**Author:** [muralikrishna-sunkara](https://github.com/muralikrishna-sunkara)
