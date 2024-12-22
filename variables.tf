# Define Variables

# General Variables
variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
}

# S3 Variables
variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "tungstennn-bucket"
}

# VPC Variables
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

# EC2 Variables
variable "ami_id" {
  description = "Amazon Machine Image ID"
  default     = "ami-027d95b1c717e8c5d"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}
