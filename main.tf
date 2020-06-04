terraform {

}

resource "azurerm_resource_group" "demo01" {
    name                      = "PP-RedisEnt-test"
    location                  = "eastus2"
}
