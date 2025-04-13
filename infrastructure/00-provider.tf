terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "henks-nginx-deployment-terraform-state"
    key            = "infrastructure/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}
provider "aws" {
  region = "us-east-1"
}