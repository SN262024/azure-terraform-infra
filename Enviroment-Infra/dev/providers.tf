terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.8.0"
    }
  }
}

provider "azurerm" {
  features {}
  //use_cli = false
  subscription_id = "b14a3699-29f5-4013-af1a-5ee5bcc0c511"
}
