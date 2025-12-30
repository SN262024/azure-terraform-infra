# variable "resource_group" {}
# variable "virtual_network" {}
# variable "subnet" {}
# variable "storage_container" {}
# variable "storage_account" {}
# variable "virtual_machine" {}
# variable "sql_server" {}
# variable "sql_database" {}
# variable "public_ip" {}
# variable "bastion" {}
# variable "key_vault" {}

variable "resource_group" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

variable "virtual_network" {
  type = map(object({
    vnet_name     = string
    address_space = list(string)
    rg_name       = string
    location      = string
  }))
}

variable "subnet" {
  type = map(object({
    subnet_name      = string
    address_prefixes = list(string)
    vnet_name        = string
    rg_name          = string
  }))
}
variable "bastion" {
  type = map(object({
    name       = string
    rg_name    = string
    location   = string
    subnet_key = string
    pip_key    = string
  }))
}


variable "virtual_machine" {
  type = map(object({
    vm_name        = string
    rg_name        = string
    location       = string
    subnet_key     = string
    admin_username = string
    admin_password = string
  }))
  sensitive = true
}
variable "storage_account" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}

variable "storage_container" {
  type = map(object({
    name            = string
    storage_account = string
  }))
}

variable "sql_server" {
  type = map(object({
    server_name    = string
    rg_name        = string
    location       = string
    admin_username = string
    admin_password = string
  }))
  sensitive = true
}

variable "sql_database" {
  type = map(object({
    db_name    = string
    server_key = string
  }))
}

variable "public_ip" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}

variable "key_vault" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
  }))
}


