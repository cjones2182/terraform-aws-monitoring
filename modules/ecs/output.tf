output "app_task_cluster" {
  description = "ecs task cluster"
  value = aws_ecs_cluster.app_task_cluster.name
}
output "app_ecs_service" {
  description = "ecs service"
  value = aws_ecs_service.app_ecs_service.name
}