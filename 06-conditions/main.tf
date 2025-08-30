resource "local_file" "test" {
  filename = "a.txt"
  content = var.content == null ? "null content"  :  var.content
}

variable "content" {
  default = null
}

resource "null_resource" "name" {
  count = 1
}