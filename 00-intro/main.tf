variable "x" {
  default = "This test"
}

#print variable an output
output "x" {
  value = var.x
}

output "x1" {
  value = "Value of x - ${var.x}"
}