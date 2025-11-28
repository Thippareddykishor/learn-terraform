provider "local" {
  
}

resource "local_file" "foo" {
  content = "test"
  filename = "foo.bar"
}

variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

output "x1" {
  value = "value of x -${var.x}"
}

variable "y" {
  default = [1,2,3,4,88]
}

output "y1" {
  value = "list ${var.y[0]}"
}

variable "z" {
  default = {
    name= "john"
    age =20
  }
}

output "z" {
  value = "${var.z["name"]} - ${var.z.age}" 
}