resource "azurerm_container_registry" "acr1" {
  name                = var.acr1
###  resource_group_name = var.rg3
###  location            = var.location
  resource_group_name = azurerm_resource_group.rg3.name
  location            = azurerm_resource_group.rg3.location
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled

  georeplications {
    location                = var.geo_location1
    zone_redundancy_enabled = var.zone_redundancy_enabled
    tags                    = {}
  }
  georeplications {
    location                = var.geo_location2
    zone_redundancy_enabled = var.zone_redundancy_enabled
    tags                    = {}
  }
}