resource "azurerm_network_security_group" "nsgs" {
  count               = 22
  name                = var.nsg_names[count.index]
  location            = azurerm_resource_group.rg5.location
  resource_group_name = azurerm_resource_group.rg5.name
}