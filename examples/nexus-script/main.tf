provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Script
################################################################################
module "nexus_script" {
  source = "../../modules/nexus-script"

  name    = "create-repo-pypi-internal"
  type    = "groovy"
  content = "repository.createPyPiHosted('pypi-internal')"
}
