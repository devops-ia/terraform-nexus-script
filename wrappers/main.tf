module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_script = try(each.value.nexus_script, var.defaults.nexus_script, [])
}
