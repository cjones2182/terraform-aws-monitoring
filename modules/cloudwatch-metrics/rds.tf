resource "aws_cloudwatch_metric_alarm" "rds_cpu_utilization" {
  alarm_name = "rds-cpu_utilization"
  namespace = "AWS/RDS"
  metric_name = "CPUUtilization"
  statistic = "Average"
  threshold = 70
  period = 300
  evaluation_periods = 2
  comparison_operator = GreaterThanOrEqualToThreshold

  dimensions = {
    DBInstanceIdentifier = var.main_rds
  }
}