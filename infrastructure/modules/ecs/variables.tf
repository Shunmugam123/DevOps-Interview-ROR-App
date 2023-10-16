variable "ror_app_cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "availability_zones" {
  description = "eu-central-1 AZs"
  type        = list(string)
}

variable "ror_app_task_family" {
  description = "ECS Task Family"
  type        = string
}

variable "ecr_repo_url" {
  description = "ECR Repo URL"
  type        = string
}

variable "ecr_repo_url1" {
  description = "ECR Repo URL1"
  type        = string
}

variable "ecr_repo_url2" {
  description = "ECR Repo URL2"
  type        = string
}

variable "ecr_repo_url3" {
  description = "ECR Repo URL3"
  type        = string
}

variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "container_port1" {
  description = "Container Port1"
  type        = number
}

variable "container_port2" {
  description = "Container Port2"
  type        = number
}

variable "ror_app_task_name" {
  description = "ECS Task Name"
  type        = string
}

variable "ror_app_task_name1" {
  description = "ECS Task Name1"
  type        = string
}

variable "ror_app_task_name2" {
  description = "ECS Task Name2"
  type        = string
}

variable "ror_app_task_name3" {
  description = "ECS Task Name3"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "ECS Task Execution Role Name"
  type        = string
}

variable "vpc_id" {
  description = "This is VPC ID"
  type        = string
}
