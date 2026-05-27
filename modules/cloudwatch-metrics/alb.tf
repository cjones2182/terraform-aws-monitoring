resource "aws_cloudwatch_metric_alarm" "alb_metric_alarm" {
    alarm_name =  "alb-metric-alarm"
    metric_name = "HTTPCode_ELB_5XX_Count"
    namespace = "AWS/ApplicationELB"
    statistic = "sum"
    period = 300
    evaluation_periods = 2
    threshold = 5
    comparison_operator = "GreaterThanOrEqualToThreshold"

    dimensions = {
      Loadbalancer = var.alb_arn_suffix
    }
}