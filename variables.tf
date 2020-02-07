variable "name" {
  description = "The name of the ssm parameter"
  type        = string
}

variable "type" {
  description = "The type of the ssm parameter (should be SecureString)"
  type        = string
  default     = "SecureString"
}

variable "value" {
  description = "The encrypted value for the ssm parameter"
  type        = string
}

variable "overwrite_enabled" {
  description = "Whether to overwrite an existing ssm parameter"
  type = bool
}