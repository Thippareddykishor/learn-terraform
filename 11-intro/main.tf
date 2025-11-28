provider "local" {
  
}

resource "local_file" "foo" {
  content = "test"
  filename = "foo.bar"
}