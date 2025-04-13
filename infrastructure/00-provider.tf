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
    bucket         = var.s3_bucket_name
    key            = var.backend_key
    region         = var.aws_region
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  region = var.aws_region
}