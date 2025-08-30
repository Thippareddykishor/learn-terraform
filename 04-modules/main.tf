module "null_resources" {
  source = "./null-res-module"
}

module "resource-count" {
  source = "./resource-count"
  input = module.null_resources.resources
}