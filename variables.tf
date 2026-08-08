variable "environment" {
  type        = string
  description = "The deployment environment (e.g., test, prod)"
  default     = "test"
}

variable "location" {
  type        = string
  description = "The Azure region for resources"
  default     = "East US"
}
