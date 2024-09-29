variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "db_name" {
  description = "The name of the PostgreSQL database."
  type        = string
  default     = "techfood"
}

variable "db_username" {
  description = "The username for the PostgreSQL database."
  type        = string
}

variable "db_password" {
  description = "The password for the PostgreSQL database."
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance."
  type        = string
  default     = "db.t3.micro"
}

variable "db_storage" {
  description = "The allocated storage for the RDS instance in gigabytes."
  type        = number
  default     = 20
}

variable "db_subnet_ids" {
  description = "List of subnet IDs for the RDS instance."
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to assign to the RDS instance."
  type        = list(string)
}