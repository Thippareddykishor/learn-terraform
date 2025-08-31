provider "vault" {
  address = "http://vault.kommanuthala.store:8200"
  token= var.vault_token
}

variable "vault_token" {}

data "vault_generic_secret" "secret_data" {
    path = "test/demo"
}

resource "local_file" "test" {
    filename = "a.txt"
    content = data.vault_generic_secret.secret_data.data["username"]
}

