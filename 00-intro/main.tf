variable "x" {
  default = "This test 123"
}

#print variable an output
output "x" {
  value = var.x
}

output "x1" {
  value = "Value of x - ${var.x}"
}

variable "z" {
  default = {
    name = "john"
    age = 20
  }
}

#List variables
variable "y" {
  default = [1,"abc",0.3,false]
}

output "y1" {
  value = var.y[3]
}

output "z1" {
  value = "Name ${var.z["name"]},  Age ${var.z.age}"
}

#tfvars
variable "input" {}

output "input" {
  value = var.input
}

#auto tf vars
variable "class" {}
output "class" {
  value = var.class
}

variable "trainer" {}
output "trainer" {
  value = var.trainer
}