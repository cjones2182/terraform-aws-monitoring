resource "aws_cloudwatch_metric_alarm" "ecs_cpu_utilization" {
  alarm_name = "cpu-utilization"
  metric_name = "CPUUtilization"
  namespace = "AWS/ECS"
  statistic = "Average"
  period =  300
  evaluation_periods = 2
  threshold = 70
  comparison_operator = "GreaterThanOrEqualToThreshold"
  alarm_actions = [ var.cloudwatch_sns_topic ]

  dimensions = {
    ClusterName = var.app_task_cluster
    ServiceName = var.app_ecs_service
  }
}