resource "local_file" "name" {
  filename = "a.txt"
  content = var.content == null ? "Null" : var.content
}

variable "content" {
  default = null
}

variable "x" {
  type = number
}

locals {
  x = var.x == 1 ? "100" : (var.x == 2 ? "200" : 0)
}

output "x" {
  value = local.x
}