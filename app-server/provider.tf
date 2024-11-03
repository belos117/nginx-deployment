terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {

    organization = "henkel_solutions"

    workspaces {
      name = "nginx-server"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
