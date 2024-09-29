output "db_instance_endpoint" {
  description = "The connection endpoint for the PostgreSQL RDS instance."
  value       = aws_db_instance.postgres.endpoint
}

output "db_instance_id" {
  description = "The ID of the PostgreSQL RDS instance."
  value       = aws_db_instance.postgres.id
}

output "db_instance_arn" {
  description = "The ARN of the PostgreSQL RDS instance."
  value       = aws_db_instance.postgres.arn
}