terraform {
  required_version = "~> 1.3"

  backend "s3" {
        bucket         = "cc-tf-demo2"
        key            = "tf-infra/terraform.tfstate"
        region         = "eu-central-1"
        dynamodb_table = "ccTfDemo2"
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
  source = "./modules/tf-state"
  bucket_name = local.bucket_name
  table_name  = local.table_name
}

module "ecrRepo" {
    source = "./modules/ecr"

    ecr_repo_name = local.ecr_repo_name
}
