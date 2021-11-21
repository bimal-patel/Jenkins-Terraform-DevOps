terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region                  = "ap-south-1"
  shared_credentials_file = "/aws/cred"
  profile                 = "customprofile"
}

# Terraform State backend Config
terraform {
  backend "s3" {
    bucket = "bms-ge-tfapply-state-bucket"
    key    = "ge/terraform.tfstate"
    region = "ap-south-1"
  }
}
