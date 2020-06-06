resource "azurerm_resource_group" "demo01" {
  name     = var.rg_name
  location = "eastus2"
}

resource "azurerm_container_registry" "demo01" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.demo01.name
  location            = azurerm_resource_group.demo01.location
  sku                 = "Basic"
  admin_enabled       = true
}
