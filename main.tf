terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }
}

provider "azurerm" {
  features {}
}

#Just adding a comment
resource "azurerm_resource_group" "example" {
  name     = "test2"
  location = "eastus"
}


resource "azurerm_storage_account" "example" {
  name                     = "dcubeteststorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location

account_tier             = "Standard"
account_replication_type = "GRS"

}