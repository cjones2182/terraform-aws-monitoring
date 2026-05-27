output "main_rds" {
  description = "rds main"
  value = aws_db_instance.main_rds.id
}