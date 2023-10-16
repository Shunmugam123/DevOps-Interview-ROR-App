resource "aws_ecr_repository" "ror_app_ecr_repo" {
  name = var.ecr_repo_name
}

resource "aws_ecr_repository" "ror_app_ecr_repo1" {
  name = var.ecr_repo_name1
}

resource "aws_ecr_repository" "ror_app_ecr_repo2" {
  name = var.ecr_repo_name2
}

resource "aws_ecr_repository" "ror_app_ecr_repo3" {
  name = var.ecr_repo_name3
}