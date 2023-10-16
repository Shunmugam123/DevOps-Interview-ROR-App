resource "aws_ecr_repository" "ror_app_ecr_repo" {
  name = var.ecr_repo_name
}