resource "aws_sns_topic" "cloudwatch_sns" {
  name = "cloudwatch-sns"
}
resource "aws_sns_topic_subscription" "cloudwatch_sns_topic_subscription" {
 topic_arn =  aws_sns_topic.cloudwatch_sns.arn
 protocol = "email"
 endpoint = "coryjosephjones@gmail.com"
}