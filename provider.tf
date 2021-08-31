terraform {
  required_providers {
    aws = { 
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = "iamadmin-prod"
}

locals {
  common_tags = {
    env = "AWS_POC"
  }
}

/*
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
} */