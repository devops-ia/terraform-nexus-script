################################################################################
# Script
################################################################################
variable "name" {
  description = "The name of the script."
  type        = string
}

variable "type" {
  description = "The type of the script."
  type        = string
  default     = "groovy"
}

variable "content" {
  description = "The content of this script."
  type        = string
}
