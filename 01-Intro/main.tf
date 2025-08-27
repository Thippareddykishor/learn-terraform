resource "local_file" "foo" {
    content =  "foo"
    filename = "${path.module}/foo.bar"
}

variable "x" {
  default = 10
}

#print variable
output "x" {
  value = var.x #combination of strings then ${var.x} 
}

output "x1" {
  value = "value of ${var.x}"
}

#List values
variable "y" {
  default = [1,"avc",false]
}

output "y1" {
  value = var.y[0] 
}

variable "z" {
  default = {
    name ="john"
    age =20
  }
}

output "z" {
  value = "Name ${var.z["name"]} Age ${var.z.age}" 
}

