variable "aws_region" {
  description = "The AWS region where we will build things."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "A name for JITB assignment project."
  type        = string
  default     = "cloudlite"
}