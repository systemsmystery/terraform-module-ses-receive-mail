variable "email_domains" {
  type        = list(string)
  description = "List of email domains to configure allow"
}

variable "sns_sub_endpoint" {
  type        = string
  description = "Destination for SNS notifications"
}

variable "sns_sub_protocol" {
  type        = string
  description = "Protocol for SNS notifications"
  default     = "email"
}

variable "sns_topic_name" {
  type        = string
  description = "Name of SNS topic"
  default     = "SES-Email-Incoming"
}
