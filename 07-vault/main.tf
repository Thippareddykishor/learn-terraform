provider "vault" {
  address = "http://vault-internal.kommanuthala.store:8200"\
  token= var.vault_token
}

variable "vault_token" {}