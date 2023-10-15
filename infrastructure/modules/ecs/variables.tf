variable "demo_app_cluster_name" {
    description = "ECS Cluster Name"
    type        = string
}

variable "availability_zones" {
    description = "eu-central-1 AZs"
    type        = list(string)
}

variable "demo_app_task_family" {
    description = "ECS Task Family"
    type        = string
}

variable "ecr_repo_url" {
    description = "ECR Repo URL"
    type        = string
}

variable "container_port" {
    description = "Container Port"
    type        = number
}

variable "demo_app_task_name" {
    description = "ECS Task Name"
    type        = string
}

variable "ecs_task_execution_role_name" {
    description = "ECS Task Execution Role Name"
    type        = string
}