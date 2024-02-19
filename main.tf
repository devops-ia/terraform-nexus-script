################################################################################
# Script
################################################################################
module "nexus_script" {
  source = "./modules/nexus-script"

  for_each = { for s in var.nexus_script : s.name => s }

  name    = each.value.name
  type    = each.value.type
  content = each.value.content
}
