terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


# Create a resource group
resource "azurerm_resource_group" "volvic-prod" {
  name     = "volvic-prod-Rg"
  location = "sweden central"
}



# create stage account
resource "azurerm_storage_account" "volvic-prod-storage" {
  name                     = "volvicpstorag"
  resource_group_name      = azurerm_resource_group.volvic-prod.name
  location                 = azurerm_resource_group.volvic-prod.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "production"
  }
}

# create storage container
resource "azurerm_storage_container" "volvic-prod-storage-container" {
  name                  = "volvic-prod-container"
  storage_account_name  = azurerm_storage_account.volvic-prod-storage.name
  container_access_type = "private"
}
