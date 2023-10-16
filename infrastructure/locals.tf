locals {
  bucket_name = "s3-ror"
  table_name  = "tableRoR"

  ecr_repo_name = "ror-app-ecr-repo"
  ecr_repo_name1 = "ror-app-ecr-repo1"
  ecr_repo_name2 = "ror-app-ecr-repo2"
  ecr_repo_name3 = "ror-app-ecr-repo3"

  ror_app_cluster_name           = "ror-app-cluster"
  availability_zones             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  ror_app_task_family            = "ror-app-task"
  container_port                 = 3000
  container_port1                = 80
  ror_app_task_name              = "webserver"
  ror_app_task_name1             = "rails_app"
  ror_app_task_name2             = "nginx"
  ror_app_task_name3             = "ruby"
  ecs_task_execution_role_name   = "ror-app-task-execution-role"

  application_load_balancer_name = "cc-ror-app-alb"
  target_group_name              = "cc-ror-alb-tg"

  ror_app_service_name           = "cc-ror-app-service"
}