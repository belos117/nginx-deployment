#Varibales for Provider
variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "backend_key" {
  description = "The key for the S3 bucket to store the Terraform state file"
  type        = string
  default     = "infrastructure/terraform.tfstate"
  
}

# Variables for Backend
variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  type        = string
  default     = "henks-nginx-deployment-terraform-state"
}

variable "logs_bucket_name" {
  description = "The name of the S3 bucket for access logs"
  type        = string
  default     = "henks-nginx-deployment-terraform-logs"
}

