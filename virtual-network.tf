resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1
###  location            = var.location
###  resource_group_name = var.rg5
  location            = azurerm_resource_group.rg5.location
  resource_group_name = azurerm_resource_group.rg5.name
  address_space       = var.addr
  dns_servers         = var.dns_servers
}


resource "azurerm_subnet" "subnets" {
  count                = length(var.subnet_address)
  name                 = var.subnet_names[count.index]
  resource_group_name  = azurerm_resource_group.rg5.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.subnet_address[count.index]
}