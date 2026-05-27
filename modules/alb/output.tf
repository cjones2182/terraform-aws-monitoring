output "main_alb" {
  description = "main alb"
  value = aws_lb.main_alb.arn
}
output "alb_target_group" {
  description = "target group"
  value = aws_lb_target_group.alb_target_group.arn
}
output "alb_arn_suffix" {
  description = "arn suffix for cloud metrics"
  value = aws_lb.main_alb.arn_suffix
}
output "alb_listener" {
  description = "alb listener"
  value = aws_lb_listener.main_arn.arn
}