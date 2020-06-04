terraform {
  backend "remote" {
    organization = "OSS-integrations"

    workspaces {
      name = "basic-demo"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo01" {
  name     = "PP-RedisEnt-test"
  location = "eastus2"
}

resource "azurerm_container_registry" "demo01" {
  name                = "demoRegistry01"
  resource_group_name = azurerm_resource_group.demo01.name
  location            = azurerm_resource_group.demo01.location
  sku                 = "Basic"
  admin_enabled       = false
}
