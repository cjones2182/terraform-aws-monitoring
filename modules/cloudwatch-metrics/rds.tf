resource "aws_cloudwatch_metric_alarm" "rds_cpu_utilization" {
  alarm_name = "rds-cpu_utilization"
  namespace = "AWS/RDS"
  metric_name = "CPUUtilization"
  statistic = "Average"
  threshold = 70
  period = 300
  evaluation_periods = 2
  comparison_operator = "GreaterThanOrEqualToThreshold"
  alarm_actions = [ var.cloudwatch_sns_topic ]

  dimensions = {
    DBInstanceIdentifier = var.main_rds
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_free_storage" {
  alarm_name = "rds-free_storage"
  namespace = "AWS/RDS"
  metric_name = "FreeStorageSpace"
  statistic = "Average"
  threshold = 2 * 1024 * 1024 * 1024
  period = 300
  evaluation_periods = 2
  comparison_operator = "LessThanOrEqualToThreshold"

  dimensions = {
    DBInstanceIdentifier = var.main_rds
  }
}
