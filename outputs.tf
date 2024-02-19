################################################################################
# Script
################################################################################
output "script_name" {
  description = "The name of the script."
  value       = [for s in module.nexus_script : s.name]
}
