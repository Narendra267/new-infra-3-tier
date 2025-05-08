terraform {
  cloud {
    organization = "swiggy_app"

    workspaces {
      name = "new-infra-3-tier"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Or your preferred region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "swiggy-bucket-terraform"

  versioning {
    enabled = true
  }
}

