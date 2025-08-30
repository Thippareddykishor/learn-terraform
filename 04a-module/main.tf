module "null" {
  source = "./null-res-module"
}

module "null-res-count" {
  source = "./null-res-count"
  input = module.null.out-null
}

output "name" {
  value = module.null-res-count.null-output
}