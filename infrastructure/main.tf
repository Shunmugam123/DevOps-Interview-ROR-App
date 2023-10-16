terraform {
  required_version = "~> 1.3"

backend "s3" {
        bucket         = "s3-ror"
        key            = "tf-infra/terraform.tfstate"
        region         = "eu-central-1"
        db_instance = "tableRoR"
        encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "tf_state" {
  source      = "./modules/tf-state"
  bucket_name = local.bucket_name
  table_name  = local.table_name
}