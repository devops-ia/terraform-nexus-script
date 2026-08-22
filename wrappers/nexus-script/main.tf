module "wrapper" {
  source = "../../modules/nexus-script"

  for_each = var.items

  content = try(each.value.content, var.defaults.content)
  name    = try(each.value.name, var.defaults.name)
  type    = try(each.value.type, var.defaults.type, "groovy")
}
