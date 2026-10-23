terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
locals {
  tags = {
    Environment = var.env
    Project     = "modules-demo"
    ManagedBy   = "terraform"
  }

}

provider "aws" {
    region = var.region
}


module "app_bucket" {
  source = "../../modules/s3_bucket"
  
  bucket_name = "${var.bucket_prefix}-${var.env}" 
  force_destroy = true  
  tags = local.tags
}
