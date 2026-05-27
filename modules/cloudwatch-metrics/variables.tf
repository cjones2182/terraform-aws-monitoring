variable "alb_arn_suffix" {
  description = "alb"
  type = string
}
variable "main_rds" {
  description = "rds identifier"
  type = string
}
variable "app_task_cluster" {
  description = "app task cluster"
  type = string
}
variable "app_ecs_service" {
  description = "ecs service"
  type = string
}