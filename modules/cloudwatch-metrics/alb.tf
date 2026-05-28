resource "aws_cloudwatch_metric_alarm" "alb_metric_alarm" {
    alarm_name =  "alb-metric-alarm"
    metric_name = "HTTPCode_ELB_5XX_Count"
    namespace = "AWS/ApplicationELB"
    statistic = "Sum"
    period = 300
    evaluation_periods = 2
    threshold = 5
    comparison_operator = "GreaterThanOrEqualToThreshold"
    alarm_actions = [ var.cloudwatch_sns_topic ]
   

    dimensions = {
      Loadbalancer = var.alb_arn_suffix
    }
}