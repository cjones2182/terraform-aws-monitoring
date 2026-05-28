output "cloudwatch_sns_topic" {
  description = "sns topic for cloudwatch action"
  value = aws_sns_topic.cloudwatch_sns.arn
}