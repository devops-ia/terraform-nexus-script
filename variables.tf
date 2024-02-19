################################################################################
# Script
################################################################################
variable "nexus_script" {
  description = "value"
  type = list(object({
    name    = string
    type    = optional(string)
    content = string
  }))
  default = []
}
