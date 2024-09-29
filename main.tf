resource "aws_db_subnet_group" "postgres_subnet_group" {
  name       = "postgres-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name = "PostgreSQL Subnet Group"
  }
}

resource "aws_db_instance" "postgres" {
  identifier               = "postgres-instance"
  allocated_storage        = var.db_storage  # Ensure this points to the updated value
  engine                   = "postgres"
  engine_version           = "16.3"
  instance_class           = var.db_instance_class
  db_name                  = var.db_name
  username                 = var.db_username
  password                 = var.db_password
  parameter_group_name     = "default.postgres16"
  publicly_accessible      = false
  storage_type             = "gp2"
  skip_final_snapshot      = true
  db_subnet_group_name     = aws_db_subnet_group.postgres_subnet_group.name
  vpc_security_group_ids   = var.vpc_security_group_ids
  multi_az                 = false
  backup_retention_period  = 7
  backup_window            = "03:00-04:00"
  maintenance_window       = "Mon:05:00-Mon:06:00"

  tags = {
    Name = "PostgreSQLInstance"
  }
}