variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where resources will be created"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS services and ALB"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for ECS container instances"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of EC2 instances"
  type        = number
  default     = 4
}

variable "min_capacity" {
  description = "Minimum number of EC2 instances"
  type        = number
  default     = 2
}

variable "key_name" {
  description = "SSH key pair name for EC2 instances"
  type        = string
  default     = ""
}